package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;



import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.OpinionsCli;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.OpinionsCliService;
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

public class OpiWebController {
    private final Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OpinionsCliService opinionsCliService;

    @RequestMapping("/")
    public String index (Model model) {
        model.addAttribute("opinionsCli", opinionsCliService.getAllOpinionsCli());
        return "index";
    }

    /*Visualitza totes les opinions*/
    @RequestMapping("/allOpinionsCli")
   public
    String getAllOpinions (@ModelAttribute("model") ModelMap model) {
        model.addAttribute("opinionsCli", opinionsCliService.getAllOpinionsCli());
        return "allOpinionsCli";
    }

    /*Visualitza opinió via id - buscador*/
    @RequestMapping("/opinionsCli/search")
    public
    String getOpinions (@RequestParam String id, Model model) {
        try {
            OpinionsCli o = opinionsCliService.getOpinionsCliById(id);
            if (o != null && o.getCodi().equals(id)) {
                model.addAttribute("opinionsCli", o);
            }
        } catch (Exception e) {
            log.error("Valor introduït ivvàlid", e);
        }
        return "opinionsCli";
    }

    /*Formulari per afegir opinions dins del array list */

    @GetMapping("/addOpinionsCli")
    public
    String index ( ) {
        return "redirect:/form";
    }

    @GetMapping("/form")
    public
    String formGet (Model model) {
        model.addAttribute("opinionsCli", new OpinionsCli());
        return "form";

    }

    @PostMapping("/form")
    public
    String formPost (@Valid OpinionsCli opinionsCli, BindingResult bindingResult, Model model) {
        try {
            model.addAttribute("noErrors", true);
            if (opinionsCliService.getOpinionsCliById(opinionsCli.getCodi()) != null) {
                opinionsCliService.updateOpinionsCli(opinionsCli, opinionsCli.getCodi());
            } else if (!bindingResult.hasErrors()) {
                opinionsCliService.addOpinionsCli(opinionsCli);
            }

            model.addAttribute("opinionsCli", opinionsCli);
        } catch (Exception e) {
            log.error("Error", e);
        }
        return "form";

    }

    /*Mostra actualizació formulari de l'usuari*/
    @RequestMapping(value = "/opinionsCli/{id}/update", method = RequestMethod.GET)
    public
    String updateOpinions (@PathVariable("id") String id, Model model) {
        OpinionsCli opinionsCli = opinionsCliService.getOpinionsCliById(id);
        model.addAttribute("opinionsCli", opinionsCli);
        return "/form";
    }

    /*Elimina opinio*/
    @RequestMapping("/opinionsCli/delete/{id}")
    public
    String opinionsDelete (@PathVariable("id") String id, Model model) {
        opinionsCliService.deleteOpinionsCli(id);
        return "redirect:/allOpinionsCli";
    }
}
