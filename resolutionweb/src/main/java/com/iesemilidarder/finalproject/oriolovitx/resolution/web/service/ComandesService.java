package com.iesemilidarder.finalproject.oriolovitx.resolution.web.service;


import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Comandes;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.RecomanacionsProv;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Tickets;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

@Service
public class ComandesService {
    public List <Comandes> findAll(String tickets) {
        List <Comandes> comandesList = null;
        return comandesList;
    }

    public
    void saveComandes (Comandes comandes) {

    }

    public Comandes findTwo (long id) {
        return null;
    }

    public
    void delete ( ) {

    }

    public Comandes update (String id) {
        return update(id);
    }

    public
    List <Comandes> findById (String id) {
        return findById(id);
    }

    public
    List <Comandes> findByBody (String data_ticket) { return findByBody(data_ticket);
    }


    public
    List <Comandes> getAllComandes ( ) {    return getAllComandes();
    }

    public
    void addTwo ( ) {

    }

    public Comandes saveComandes ( ) {     return saveComandes();
    }
}



