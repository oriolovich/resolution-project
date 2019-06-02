package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;


import org.apache.commons.lang3.StringUtils;

import java.util.UUID;

public class RecomanacionsProv extends Restaurants {


    private String id;
    private String suggerencia;
    private String grup_codi;
    private String punts_prestigi;


    public RecomanacionsProv (){this.id = UUID.randomUUID().toString();
    }
    public RecomanacionsProv(String id, String suggerencia, String grup_codi, String punts_prestigi) {
        if(StringUtils.isEmpty(id)){
            id = UUID.randomUUID().toString();
        }
        this.id = id;
        this.suggerencia = suggerencia;
        this.grup_codi = grup_codi;
        this.punts_prestigi = punts_prestigi;
    }
    public String getId ( ) { return id;
    }
    public void setId (String id) {
    }
    public
    String getSuggerencia ( ) {  return suggerencia;
    }

    public void setSuggerencia (String suggerencia) {
    }

    public String getGrup_codi ( ) { return grup_codi;
    }
    public void setGrup_codi (String grup_codi) {
     }
    public String getPunts_prestigi ( ) {return punts_prestigi;
    }
    public void setPunts_prestigi (String punts_prestigi) {

    }

}
