package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;



import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Opinions;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.OpinionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class OpinionsController {


    private OpinionsService opinionsService;

    /*Totes les opinions*/
    @RequestMapping("/opinions")
    public List<Opinions> getAllOpinions(){ return getAllOpinions();
    }

    /*Opinions per id*/
    @RequestMapping("/opinions/{id}")
    public Opinions getOpinions(@PathVariable String id){ return getOpinions(id);
    }

    /*Afegeix opinions*/
    @RequestMapping(method = RequestMethod.POST, value = "/opinions")
    public void addOpinions(@RequestBody Opinions opinions){
         addOpinions(opinions);
    }

    /*Actulitza opinions*/
    @RequestMapping(method = RequestMethod.PUT, value = "/opinions/{id}")
    public void updateOpinions(@RequestBody Opinions opinions, @PathVariable String id){
        updateOpinions(opinions,id);
    }

    /*Elimina opinions*/
    @RequestMapping(method = RequestMethod.DELETE, value = "/opinions/{id}")
    public void deleteOpinions(@PathVariable String id){ deleteOpinions(id);
    }

}
