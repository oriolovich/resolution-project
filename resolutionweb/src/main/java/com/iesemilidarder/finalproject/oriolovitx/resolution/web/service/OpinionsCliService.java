package com.iesemilidarder.finalproject.oriolovitx.resolution.web.service;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.OpinionsCli;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service

public class OpinionsCliService {

    /* ArrayList d'objectes de la classe "Network"*/
    private static List<OpinionsCli> opinionsList = new ArrayList<>(Arrays.asList(
            new OpinionsCli("1", "Molt agradable", "10,3", "S", "001","001"),
            new OpinionsCli("2","Mala relació qualitat/preu", "3,5", "N", "002","012"),
            new OpinionsCli ("3","Servei molt ràpid","9,9","S","003","021")
    ));

    /*Métode per veure tots les xarxes*/
    public List<OpinionsCli> getAllOpinionsCli (){ return opinionsList;
    }

    /*M er veure les xarxes per id*/
    public OpinionsCli getOpinionsCliById(String id) {
        try {
            if (id == null) {
                return null;
            }
            return opinionsList.stream().filter(t -> t.getCodi().equals(id)).findFirst().get();
        } catch (Exception e) {
            return null;
        }
    }

    /*Métode per afegir xarxa*/
    public void addOpinionsCli (OpinionsCli opinionsCli) { opinionsList.add(opinionsCli);
    }


    /*Métod actuliza xarxa*/
    public void updateOpinionsCli (OpinionsCli opi, String id){
        for (int i = 0; i < opinionsList.size(); i++) {
            OpinionsCli opinionsCli = opinionsList.get(i);
            if (opinionsCli.getCodi().equals(id)) {
                opinionsList.set(i, opi);
            }
        }
    }

    /*Métode elimina restaurant*/
    public void deleteOpinionsCli (String id) {opinionsList.removeIf(t -> t.getCodi().equals(id));
    }
}
