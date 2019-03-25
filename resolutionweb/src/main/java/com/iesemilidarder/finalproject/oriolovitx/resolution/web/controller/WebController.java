package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;

import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Network;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.NetworkService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller

public class WebController {
    protected final Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private NetworkService networkService;

    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("network", networkService.getAllNetworks());
        return "index";
    }

    /*Visualitza totes les xarxes*/
    @RequestMapping("/allNetworks")
    public String getAllNetworks(@ModelAttribute("model") ModelMap model) {
        model.addAttribute("network", networkService.getAllNetworks());
        return "allNetworks";
    }

    /*Visualitza producte via id - buscador*/
    @RequestMapping("/network/search")
    public String getNetwork(@RequestParam String id, Model model) {
        try {
            Network n = networkService.getNetworkById(id);
            if (n != null && n.getId().equals(id)) {
                model.addAttribute("network", n);
            }
        } catch (Exception e) {
            log.error("Valor introduït ivvàlid", e);
        }
        return "product";
    }

    /*Formulari per afegir xarxes dins del array list */

    @GetMapping("/addNetwork")
    public String index() {
        return "redirect:/form";
    }

    @GetMapping("/form")
    public String formGet(Model model) {
        model.addAttribute("product", new Network());
        return "form";
    }

    @PostMapping("/form")
    public String formPost(@Valid Network network, BindingResult bindingResult, Model model) {
        try {
            model.addAttribute("noErrors", true);
            if (networkService.getNetworkById(network.getId()) != null) {
                networkService.updateNetwork(network, network.getId());
            } else if (!bindingResult.hasErrors()) {
                networkService.addNetwork(network);
            }

            model.addAttribute("network", network);
        } catch (Exception e) {
            log.error("Error", e);
        }
        return "form";

    }

    /*Mostra actualizació formulari de l'usuari*/
    @RequestMapping(value = "/network/{id}/update", method = RequestMethod.GET)
    public String updateNetwork(@PathVariable("id") String id, Model model) {
        Network network = networkService.getNetworkById(id);
        model.addAttribute("network", network);
        return "/form";
    }

    /*Elimina xarxa*/
    @RequestMapping("/network/delete/{id}")
    public String deleteNetwork(@PathVariable("id") String id, Model model) {
        networkService.deleteNetwork(id);
        return "redirect:/allNetworks";
    }
}