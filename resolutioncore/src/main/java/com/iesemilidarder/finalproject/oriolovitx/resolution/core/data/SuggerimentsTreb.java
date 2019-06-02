package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;


import org.apache.commons.lang3.StringUtils;

import java.util.UUID;

public class SuggerimentsTreb extends Treballadors {


    private String id;
    private String comentari;
    private String treb_codi;
    private String gremi_codi;
    private String  punts_prestigi;

    public SuggerimentsTreb () {this.id = UUID.randomUUID().toString();
    }
    public SuggerimentsTreb (String id, String comentari, String treb_codi, String gremi_codi, String punts_prestigi){

        if(StringUtils.isEmpty(id)) {
            id = UUID.randomUUID().toString();
        }
        this.id = id;
        this.comentari = comentari;
        this.treb_codi = treb_codi;
        this.gremi_codi = gremi_codi;
        this.punts_prestigi = punts_prestigi;
       }

    public String getId ( ) { return id;
    }

    public void setId (String id) {

    }


    public String getComentari ( ) {
        return comentari;
    }

    public void setComentari (String comentari) {

    }

    public String getTreb_codi ( ) { return treb_codi;
    }

    public void setTreb_codi (String treb_codi) {
    }

    public String getGremi_codi ( ) { return gremi_codi;
    }

    public void setGremi_codi (String gremi_codi) {
    }

    public String getPunts_prestigi ( ) { return punts_prestigi;
    }

    public void setPunts_prestigi (String punts_prestigi) {
   }
}
