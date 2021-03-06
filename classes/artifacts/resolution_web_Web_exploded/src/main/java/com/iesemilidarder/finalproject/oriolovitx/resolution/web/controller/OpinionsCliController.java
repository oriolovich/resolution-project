package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;

import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.OpinionsCli;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.OpinionsCliService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.ListIterator;

@RestController
public class OpinionsCliController {

    @Autowired
     public OpinionsCliService opinionsCliService;

    /*Totes les opinions*/
    @RequestMapping("/opinionsCli")
    public
    List <OpinionsCli> getAllOpinionsCli(){ return opinionsCliService.getAllOpinionsCli();
    }

    /*Opinions per id*/
    @RequestMapping("/opinionsCli/{id}")
    public OpinionsCli getOpinionsCli (String id) {
        try {
            if (id == null) {
                return null;
            }
            return getAllOpinionsCli().stream().filter(o -> o.getId().equals(id)).findFirst().get();
        } catch (Exception e){
            return null;
        }


    }


    /*Afegeix opinions*/
    @RequestMapping(method = RequestMethod.POST, value = "/opinionsCli")
    public void addOpinionsCli(@RequestBody OpinionsCli opinionsCli){ opinionsCliService.addOne();
    }

    /*Actulitza opinions*/
    @RequestMapping(method = RequestMethod.PUT, value = "/opinionsCli/{id}")
    public void updateOpinionsCli(@RequestBody OpinionsCli opinionsCli, @PathVariable String id){
        opinionsCliService.update(id);
    }

    /*Elimina opinions*/
    @RequestMapping(method = RequestMethod.DELETE, value = "/opinionsCli/{id}")
    public void deleteOpinionsCli(@PathVariable String id){
        opinionsCliService.delete();
    }

}
