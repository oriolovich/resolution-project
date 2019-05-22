package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;



import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Restaurants;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.RestaurantsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class RestaurantsController {

    @Autowired
    private RestaurantsService restaurantsService;

    /*Totes les opinions*/
    @RequestMapping("/restaurants")
    public List<Restaurants> getAllRestuaurants(){
        return restaurantsService.getAllRestaurants();
    }

    /*Opinions per id*/
    @RequestMapping("/restaurants/{id}")
    public Restaurants getRestaurants(@PathVariable String id){
        return restaurantsService.getRestaurantsById(id);
    }

    /*Afegeix opinions*/
    @RequestMapping(method = RequestMethod.POST, value = "/restaurants")
    public void addRestaurants(@RequestBody Restaurants restaurants){
         restaurantsService.addRestaurants(restaurants);
    }

    /*Actulitza opinions*/
    @RequestMapping(method = RequestMethod.PUT, value = "/restaurants/{id}")
    public void updateRestaurants(@RequestBody Restaurants restaurants, @PathVariable String id){
        restaurantsService.updateRestaurants(restaurants,id);
    }

    /*Elimina opinions*/
    @RequestMapping(method = RequestMethod.DELETE, value = "/restaurants/{id}")
    public void deleteRestaurants(@PathVariable String id){
        restaurantsService.deleteRestaurants(id);
    }

}
