package com.iesemilidarder.finalproject.oriolovitx.resolution.web.service;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Opinions;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service

public class OpinionsService{

    /* ArrayList d'objectes de la classe "Network"*/
    private static List<Opinions> opinionsList = new ArrayList<>(Arrays.asList(
            new Opinions("1", "Molt agradable", "10,3", "S", "001","001"),
            new Opinions("2","Mala relació qualitat/preu", "3,5", "N", "002","012"),
            new Opinions("3","Servei molt ràpid","9,9","S","003","021")
    ));

    /*Métode per veure tots les xarxes*/
    public List<Opinions> getAllOpinions (){ return opinionsList;
    }

    /*M er veure les xarxes per id*/
    public Opinions getOpinionsById(String id) {
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
    public void addOpinions (Opinions opinions) { opinionsList.add(opinions);
    }


    /*Métod actuliza xarxa*/
    public void updateOpinions (Opinions opi, String id){
        for (int i = 0; i < opinionsList.size(); i++) {
            Opinions opinions = opinionsList.get(i);
            if (opinions.getCodi().equals(id)) {
                opinionsList.set(i, opi);
            }
        }
    }

    /*Métode elimina restaurant*/
    public void deleteOpinions (String id) {opinionsList.removeIf(t -> t.getCodi().equals(id));
    }
}
