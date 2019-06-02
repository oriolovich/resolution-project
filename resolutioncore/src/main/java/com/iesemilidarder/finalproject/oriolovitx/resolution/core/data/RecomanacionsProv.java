package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;


import org.apache.commons.lang3.StringUtils;

import java.util.UUID;

public class RecomanacionsProv extends Proveidors {


    private String codi;
    private String suggerencia;
    private String grup_codi;
    private String punts_prestigi;


    public RecomanacionsProv (){this.codi = UUID.randomUUID().toString();
    }
    public RecomanacionsProv(String codi, String suggerencia, String grup_codi, String punts_prestigi) {
        if(StringUtils.isEmpty(codi)){
            codi = UUID.randomUUID().toString();
        }
        this.codi = codi;
        this.suggerencia = suggerencia;
        this.grup_codi = grup_codi;
        this.punts_prestigi = punts_prestigi;
    }
    public String getCodi ( ) { return codi;
    }
    public void setCodi (String codi) {
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
