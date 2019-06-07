package com.iesemilidarder.finalproject.oriolovitx.resolution.web.service;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Clients;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.OpinionsCli;
import org.springframework.stereotype.Service;

import java.util.List;


@Service

public class OpinionsCliService {

     /* ArrayList d'objectes de la classe "Network"*/
     public
     List <OpinionsCli> findAll ( ) {
          return null;
     }

     public
     void saveOpinionsCli (OpinionsCli opinionsCli) {

     }

     public
     OpinionsCli findOne (long id) {
          return null;
     }

     public
     void delete ( ) {

     }

     public
     OpinionsCli update (String id) {
          return update(id);
     }

     public
     List <OpinionsCli> findById (String id) {
          return findById(id);
     }

     public
     List <OpinionsCli> findByBody (String observacio) {
          return findByBody(observacio);
     }


     public
     List <OpinionsCli> getAllOpinionsCli ( ) {
          return getAllOpinionsCli();
     }

     public
     void addOne ( ) {

     }

     public
     OpinionsCli saveOpinionsCli ( ) {
          return saveOpinionsCli();
     }
}
