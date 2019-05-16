package com.iesemilidarder.finalproject.oriolovitx.resolution.web.service;
import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.Opinions;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service

public class OpinionsService {

    /* ArrayList d'objectes de la classe "Network"*/
    private static List<Opinions> opinionsList = new ArrayList<>(Arrays.asList(
            new Opinions("1", "Molt agradable i barat", "6,50", "N", "001", "020"),
            new Opinions("2", "67.19.23.54", "Bo amb ambient massa sorollós", "5,50","S","021"),
            new Opinions("3", "Desagradable i car", "3,50", "30","S", "022")
    ));

    /*Métode per veure tots les xarxes*/
    public List<Opinions> getAllOpinions() {  return opinionsList;
    }

    /*Métode per veure les xarxes per id*/
    public Opinions getOpinionsById(String id) {
        try {
            if (id == null) {
                return null;
            }
            return opinionsList.stream().filter(t -> t.getId().equals(id)).findFirst().get();
        } catch (Exception e) {
            return null;
        }
    }

    /*Métode per afegir xarxa*/
    public void addOpinions(Opinions opinions) { opinionsList.add(opinions);
    }

    /*Métod actuliza xarxa*/
    public void updateOpinions(Opinions opin, String id) {
        for (int i = 0; i < opinionsList.size(); i++) {
            Opinions opinions = opinionsList.get(i);
            if (opinions.getId().equals(id)) {
                opinionsList.set(i, opin);
            }
        }
    }

    /*Metodo eliminar producto*/
    public void deleteOpinions(String id) { opinionsList.removeIf(t -> t.getId().equals(id));
    }
}
