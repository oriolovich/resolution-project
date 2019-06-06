package com.iesemilidarder.finalproject.oriolovitx.resolution.web.service;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Clients;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.OpinionsCli;
import org.springframework.stereotype.Service;

import java.util.List;


@Service

public interface OpinionsCliService {

    /* ArrayList d'objectes de la classe "Network"*/
     public  List<OpinionsCli> findAll();
     public void saveOpinionsCli (OpinionsCli opinionsCli);
     public OpinionsCli findOne(long id);
     public void delete ( );
     public
     OpinionsCli update (String id);
     public List<OpinionsCli> findById (String id);
     public List<OpinionsCli> findByBody (String observacio);


    List<OpinionsCli> getAllOpinionsCli ( );

    public void addOne ();

    OpinionsCli saveOpinionsCli ( );
}
