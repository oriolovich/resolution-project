package com.iesemilidarder.finalproject.oriolovitx.resolution.web.controller;


import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Network;
import com.iesemilidarder.finalproject.oriolovitx.resolution.web.service.NetworkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class NetworkController {

    @Autowired
    private NetworkService networkService;

    /*Ver todos los productos*/
    @RequestMapping("/networks")
    public List<Network> getAllNetworks(){
        return networkService.getAllNetworks();
    }

    /*Ver el producto por id*/
    @RequestMapping("/networks/{id}")
    public Network getNetwork(@PathVariable String id){
        return networkService.getNetworkById(id);
    }

    /*Añadir pruducto*/
    @RequestMapping(method = RequestMethod.POST, value = "/networks")
    public void addNetwork(@RequestBody Network network){
        networkService.addNetwork(network);
    }

    /*Actulizar producto*/
    @RequestMapping(method = RequestMethod.PUT, value = "/networks/{id}")
    public void updateNetwork(@RequestBody Network network, @PathVariable String id){
        networkService.updateNetwork(network,id);
    }

    /*Eliminar producto*/
    @RequestMapping(method = RequestMethod.DELETE, value = "/networks/{id}")
    public void deleteNetwork(@PathVariable String id){
        networkService.deleteNetwork(id);
    }

}
