package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;


import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Opinions;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.OpinionsService;
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
    private final Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OpinionsService opinionsService;

    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("opinions", opinionsService.getAllOpinions());
        return "index";
    }

    /*Visualitza totes les opinions*/
    @RequestMapping("/allOpinions")
    public String getAllOpinions(@ModelAttribute("model") ModelMap model) {
        model.addAttribute("opinions", opinionsService.getAllOpinions());
        return "allOpinions";
    }

    /*Visualitza opinió via id - buscador*/
    @RequestMapping("/opinions/search")
    public String getOpinions(@RequestParam String id, Model model) {
        try {
            Opinions o = opinionsService.getOpinionsById(id);
            if (o != null && o.getId().equals(id)) {
                model.addAttribute("opinions", o);
            }
        } catch (Exception e) {
            log.error("Valor introduït ivvàlid", e);
        }
        return "opinions";
    }

    /*Formulari per afegir opinions dins del array list */

    @GetMapping("/addOpinions")
    public String index() {
        return "redirect:/form";
    }

    @GetMapping("/form")
    public String formGet(Model model) {
        model.addAttribute("opinions", new Opinions());
        return "form";
    }

    @PostMapping("/form")
    public String formPost(@Valid Opinions opinions, BindingResult bindingResult, Model model) {
        try {
            model.addAttribute("noErrors", true);
            if (opinionsService.getOpinionsById(opinions.getId()) != null) {
                opinionsService.updateOpinions(opinions,opinions.getId());
            } else if (!bindingResult.hasErrors()) {
                opinionsService.addOpinions(opinions);
            }

            model.addAttribute("opinions", opinions);
        } catch (Exception e) {
            log.error("Error", e);
        }
        return "form";

    }

    /*Mostra actualizació formulari de l'usuari*/
    @RequestMapping(value = "/opinions/{id}/update", method = RequestMethod.GET)
    public String updateOpinions(@PathVariable("id") String id, Model model) {
        Opinions opinions = opinionsService.getOpinionsById(id);
        model.addAttribute("opinions", opinions);
        return "/form";
    }

    /*Elimina opinio*/
    @RequestMapping("/opinions/delete/{id}")
    public String deleteOpinions(@PathVariable("id") String id, Model model) {
        opinionsService.deleteOpinions(id);
        return "redirect:/allOpinions";
    }
}