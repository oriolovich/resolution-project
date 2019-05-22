package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;


import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Restaurants;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.RestaurantsService;
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
    private RestaurantsService restaurantsService;

    @RequestMapping("/")
    public String index(Model model) {
        model.addAttribute("restaurants", restaurantsService.getAllRestaurants());
        return "index";
    }

    /*Visualitza totes les opinions*/
    @RequestMapping("/allRestaurants")
    public String getAllRestaurants(@ModelAttribute("model") ModelMap model) {
        model.addAttribute("restaurants", restaurantsService.getAllRestaurants());
        return "allRestaurants";
    }

    /*Visualitza opinió via id - buscador*/
    @RequestMapping("/restaurants/search")
    public String getRestuaurants(@RequestParam String id, Model model) {
        try {
            Restaurants t = restaurantsService.getRestaurantsById(id);
            if (t!= null && t.getCodi().equals(id)) {
                model.addAttribute("restaurants", t);
            }
        } catch (Exception e) {
            log.error("Valor introduït ivvàlid", e);
        }
        return "restaurants";
    }

    /*Formulari per afegir opinions dins del array list */

    @GetMapping("/addRestaurants")
    public String index() {
        return "redirect:/form";
    }

    @GetMapping("/form")
    public String formGet(Model model) {
        model.addAttribute("restaurants", new Restaurants());
        return "form";
    }

    @PostMapping("/form")
    public String formPost(@Valid Restaurants restaurants, BindingResult bindingResult, Model model){
        try {
            model.addAttribute("noErrors", true);
            if (restaurantsService.getRestaurantsById(restaurants.getCodi())!= null) {
                restaurantsService.updateRestaurants(restaurants, restaurants.getCodi());
            } else if (!bindingResult.hasErrors()) {
                restaurantsService.addRestaurants(restaurants);
            }

            model.addAttribute("restaurants", restaurants);
        } catch (Exception e) {
            log.error("Error", e);
        }
        return "form";

    }

    /*Mostra actualizació formulari de l'usuari*/
    @RequestMapping(value = "/restaurants/{id}/update", method = RequestMethod.GET)
    public String updateRestaurants(@PathVariable("id") String id, Model model) {
       Restaurants restaurants = restaurantsService.getRestaurantsById(id);
        model.addAttribute("restaurants", restaurants);
        return "/form";
    }

    /*Elimina opinio*/
    @RequestMapping("/restaurants/delete/{id}")
    public String restaurantsDelete(@PathVariable("id") String id, Model model){
        restaurantsService.deleteRestaurants(id);
        return "redirect:/allRestaurants";
        }
    }
