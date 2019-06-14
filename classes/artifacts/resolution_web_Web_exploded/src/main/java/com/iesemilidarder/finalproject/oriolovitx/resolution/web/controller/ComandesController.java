package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;

import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Comandes;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.OpinionsCli;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Tickets;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.ComandesService;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.OpinionsCliService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ComandesController {

    @Autowired
    public ComandesService comandesService;

    /*Totes les opinions*/
    @RequestMapping("/comandes")
    public
    List <Comandes> getAllComandes(){ return comandesService.getAllComandes();
    }

    /*Opinions per id*/
    @RequestMapping("/comandes/{id}")
    public Comandes get (String id) {
        try {
            if (id == null) {
                return null;
            }
            return getAllComandes().stream().filter(t -> t.getCodi().equals(id)).findFirst().get();
        } catch (Exception e){
            return null;
        }


    }


    /*Afegeix opinions*/
    @RequestMapping(method = RequestMethod.POST, value = "/comandes")
    public void addComandes(@RequestBody Comandes comandes){ comandesService.addTwo();
    }

    /*Actulitza opinions*/
    @RequestMapping(method = RequestMethod.PUT, value = "/comandes/{id}")
    public void updateComandes(@RequestBody Comandes comandes, @PathVariable String id){
        comandesService.update(id);
    }

    /*Elimina opinions*/
    @RequestMapping(method = RequestMethod.DELETE, value = "/comandes/{id}")
    public void deleteComandes(@PathVariable String id){
        comandesService.delete();
    }



}


