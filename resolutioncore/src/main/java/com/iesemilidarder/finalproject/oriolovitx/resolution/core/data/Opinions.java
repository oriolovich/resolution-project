package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

import org.apache.commons.lang3.StringUtils;
import java.util.UUID;


public class Opinions {




    private String id;
    private String observacio;
    private String puntuacio;
    private String oprevisada;
    private String restcodi;
    private String uscodi;

    public Opinions () {
        this.id = UUID.randomUUID().toString();
    }

    public
    Opinions (String id, String observacio, String puntuacio, String oprevisada, String restcodi, String uscodi) {
        //this.id = id;
        if (StringUtils.isEmpty(id)) {
            id = UUID.randomUUID().toString();
        }
        this.id = id;
        this.observacio = observacio;
        this.puntuacio = puntuacio;
        this.oprevisada = oprevisada;
        this.restcodi = restcodi;
        this.uscodi = uscodi;


    }

    public String getId ( ) { return id;
    }

    public void setId (String id) {
        this.id = id;
    }

    public String getObservacio ( ) {
        return observacio;
    }

    public void setObservacio (String observacio) {
        this.observacio = observacio;
    }

    public String getPuntuacio ( ) {
        return puntuacio;
    }

    public
    void setPuntuacio (String puntuacio) {
        this.puntuacio = puntuacio;
    }

    public
    String getOprevisada ( ) {
        return oprevisada;
    }

    public
    void setOprevisada (String oprevisada) {
        this.oprevisada = oprevisada;
    }

    public
    String getRestcodi ( ) {
        return restcodi;
    }

    public
    void setRestcodi (String restcodi) {
        this.restcodi = restcodi;
    }

    public
    String getUscodi ( ) {
        return uscodi;
    }

    public
    void setUscodi (String uscodi) {
        this.uscodi = uscodi;
    }

}

