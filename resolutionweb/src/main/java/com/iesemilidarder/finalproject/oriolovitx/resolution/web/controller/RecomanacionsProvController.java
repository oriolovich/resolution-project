package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;

import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.RecomanacionsProv;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.RecomanacionsProvService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController

public class RecomanacionsProvController {

    @Autowired
    private
    RecomanacionsProvService recomanacionsProvService;

    @RequestMapping ("/recomanacionsProv")
    public List<RecomanacionsProv> getAllRecomanacionsProv () {return recomanacionsProvService.getAllRecomanacionsProv();
    }
    @RequestMapping ("/recomanacionsProv/{id}")
    public RecomanacionsProv getRecomanacionsProv (@PathVariable String id) {return  recomanacionsProvService.getRecomanacionsProvById(id);
    }
    @RequestMapping (method = RequestMethod.POST, value = "/recomanacionsProv")
    public void add
}
