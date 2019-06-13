package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;

import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Comandes;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.OpinionsCli;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Tickets;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.ComandesService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.logging.Logger;

@Controller

public class ComandesWebController {
    private final Logger log = (Logger) LoggerFactory.getLogger(this.getClass());

    @Autowired
    public ComandesService comandesService;


    @RequestMapping("/")
    public String index (Model model) {
        model.addAttribute("comandes", comandesService.getAllComandes());
        return "indexcomandes";
    }

    /*Visualitza totes les opinions*/
    @RequestMapping("/allComandes")
    public
    String getAllComandes (@ModelAttribute("model") ModelMap model) {
        model.addAttribute("comandes", comandesService.getAllComandes());
        return "allComandes";
    }

    /*Visualitza opinió via id - buscador*/
    @RequestMapping("/Comandes/search")
    public
    String getOpinions (@RequestParam String id, Model model) {
        try {
            Comandes c = comandesService.saveComandes();
            if (c != null && c.getCodi().equals(id)) {
                model.addAttribute("comandes", c);
            }
        } catch (Exception e) {

        }
        return "comandes";
    }

    /*Formulari per afegir opinions dins del array list */

    @GetMapping("/addComandes")
    public
    String index ( ) {
        return "redirect:/form";
    }

    @GetMapping("/formcomandes")
    public
    String formGet (Model model) {
        model.addAttribute("comandes", new Comandes());
        return "formcomandes";

    }

    @PostMapping("/formcomandes")
    public
    String formPost (@Valid Comandes comandes, BindingResult bindingResult, Model model) {

        return "formcomandes";

    }

    /*Mostra actualizació formulari de l'usuari*/
    @RequestMapping(value = "/comandes/{id}/update", method = RequestMethod.GET)
    public
    String updateComandes (@PathVariable("id") String id, Model model) {
        Comandes comandes = comandesService.update(id);
        model.addAttribute("comandes", comandes);
        return "/formcomandes";
    }

    /*Elimina opinio*/
    @RequestMapping("/comandes/{id}/delete")
    public
    String comandesDelete (@PathVariable("id") String id, Model model) {
        comandesService.delete();
        return "redirect:/allComandes";
    }
}
