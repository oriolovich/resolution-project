package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

import org.apache.commons.lang3.StringUtils;
import java.util.UUID;


public class  OpinionsCli extends Clients{
    private String id;
    private String observacio;
    private String puntuacio;
    private String oprevisada;
    private String restcodi;
    private String clicodi;

    public OpinionsCli() {
        super();
        this.id = UUID.randomUUID().toString();
    }

    public OpinionsCli (String id, String observacio, String puntuacio, String oprevisada, String restcodi, String clicodi) {
        //this.id = id;
        if (StringUtils.isEmpty(id)) {
            id = UUID.randomUUID().toString();
        }
        this.id = id;
        this.observacio = observacio;
        this.puntuacio = puntuacio;
        this.oprevisada = oprevisada;
        this.restcodi = restcodi;
        this.clicodi = clicodi;


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
        return clicodi;
    }

    public
    void setUscodi (String uscodi) {
        this.clicodi = uscodi;
    }

}

