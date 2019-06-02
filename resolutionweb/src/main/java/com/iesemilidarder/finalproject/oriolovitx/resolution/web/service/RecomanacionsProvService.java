package com.iesemilidarder.finalproject.oriolovitx.resolution.web.service;

import com.iesemilidarder.finalproject.oriolovitx.resolution.core.data.RecomanacionsProv;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class RecomanacionsProvService {
     private static List<RecomanacionsProv> recomanacionsProvList = new ArrayList <>(Arrays.asList(

     ));
    public List <RecomanacionsProv> getAllRecomanacionsProv () {return recomanacionsProvList;

    public RecomanacionsProv getRecomanacionsProvById (String id){

            try {
                if (id == null) {
                    return null;
                }
                return recomanacionsProvList.stream().filter(t -> t.getCodi().equals(id)).findFirst().get();
            } catch (Exception e) {
                return null;
            }
        }

        /*Métode per afegir xarxa*/
        public void addRecomanacionsProv (RecomanacionsProv recomanacionsProv { recomanacionsProvList.add(RecomanacionsProv);
        }


        /*Métod actuliza xarxa*/
        public void updateRecomanacionsProv (RecomanacionsProv recom, String id){
            for (int i = 0; i < recomanacionsProvList.size(); i++) {
                RecomanacionsProv recomanacionsProv = recomanacionsProvList.get(i);
                if (recomanacionsProv.getCodi().equals(codi)) {
                    recomanacionsProvList.set(i, opi);
                }
            }
        }

        /*Métode elimina restaurant*/
        public void deleteOpinions (String codi) {recomanacionsProvList.removeIf(t -> t.getCodi().equals(codi);
        }
    }
    }
}