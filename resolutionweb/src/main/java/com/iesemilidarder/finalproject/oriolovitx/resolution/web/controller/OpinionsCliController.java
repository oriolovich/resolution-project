package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;

import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.OpinionsCli;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.OpinionsCliService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class OpinionsCliController {

    @Autowired
    private OpinionsCliService opinionsCliService;

    /*Totes les opinions*/
    @RequestMapping("/opinionsCli")
    public List<OpinionsCli> getAllOpinionsCli(){ return opinionsCliService.getAllOpinionsCli();
    }

    /*Opinions per id*/
    @RequestMapping("/opinionsCli/{id}")
    public OpinionsCli getOpinionsCli(@PathVariable String id){ return opinionsCliService.getOpinionsCliById(id);
    }

    /*Afegeix opinions*/
    @RequestMapping(method = RequestMethod.POST, value = "/opinionsCli")
    public void addOpinionsCli(@RequestBody OpinionsCli opinionsCli){ opinionsCliService.addOpinionsCli(opinionsCli);
    }

    /*Actulitza opinions*/
    @RequestMapping(method = RequestMethod.PUT, value = "/opinionsCli/{id}")
    public void updateOpinionsCli(@RequestBody OpinionsCli opinionsCli, @PathVariable String id){
        opinionsCliService.updateOpinionsCli(opinionsCli,id);
    }

    /*Elimina opinions*/
    @RequestMapping(method = RequestMethod.DELETE, value = "/opinionsCli/{id}")
    public void deleteOpinionsCli(@PathVariable String id){
        opinionsCliService.deleteOpinionsCli(id);
    }

}