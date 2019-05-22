package com.iesemilidarder.finalproject.oriolovitx.resolution.web.service;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Restaurants;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service

public class RestaurantsService{

    /* ArrayList d'objectes de la classe "Network"*/
    private static List<Restaurants> restaurantsList = new ArrayList<>(Arrays.asList(
            new Restaurants("1", "El llamàntol", "Ronda Ponent S/N Llucmajor", "234,12", "55325","45,432567","www.llamantol.com", "0034971768594", "001")
    ));

    /*Métode per veure tots les xarxes*/
    public List<Restaurants> getAllRestaurants (){
        return restaurantsList;
    }

    /*M er veure les xarxes per id*/
    public Restaurants getRestaurantsById(String id) {
        try {
            if (id == null) {
                return null;
            }
            return restaurantsList.stream().filter(t -> t.getCodi().equals(id)).findFirst().get();
        } catch (Exception e) {
            return null;
        }
    }

    /*Métode per afegir xarxa*/
    public void addRestaurants (Restaurants restaurants) {
        restaurantsList.add(restaurants);
    }


    /*Métod actuliza xarxa*/
    public void updateRestaurants (Restaurants rest, String id){
        for (int i = 0; i < restaurantsList.size(); i++) {
            Restaurants restaurants = restaurantsList.get(i);
            if (restaurants.getCodi().equals(id)) {
                restaurantsList.set(i, rest);
            }
        }
    }

    /*Métode elimina restaurant*/
    public void deleteRestaurants (String id) {restaurantsList.removeIf(t -> t.getCodi().equals(id));
    }
}
