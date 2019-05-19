package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

import org.apache.commons.lang3.StringUtils;

import java.util.UUID;

public class Restaurants {



    private String codi;
    private String nom;
    private String adreca;
    private String mitjana;
    private String latitud;
    private String longitud;
    private String web;
    private String telefon;
    private String trs_codi;

    public Restaurants () {this.codi = UUID.randomUUID().toString();    }

    public Restaurants (String codi, String nom, String adreca, String mitjana, String latitud, String longitud, String web, String telefon, String trs_codi)
    {
        if(StringUtils.isEmpty(codi)) {
            codi = UUID.randomUUID().toString();
        }
        this.codi = codi;
        this.nom = nom;
        this.adreca = adreca;
        this.mitjana = mitjana;
        this.latitud = latitud;
        this.longitud = longitud;
        this.web = web;
        this.telefon = telefon;
        this.trs_codi = trs_codi;
    }
    public String getCodi ( ) {
        return codi;
    }

    public void setCodi (String codi) {
        this.codi = codi;
    }
    public String getNom ( ) {
        return nom;
    }
    public void setNom (String nom) {
        this.nom = nom;
    }
    public String getAdreca ( ) {
        return adreca;
    }
    public void setAdreca (String adreca) {
        this.adreca = adreca;
    }
    public String getMitjana ( ) {
        return mitjana;
    }
    public void setMitjana (String mitjana) {
        this.mitjana = mitjana;
    }

    public String getLatitud ( ) {
        return latitud;
    }

    public void setLatitud (String latitud) {
        this.latitud = latitud;
    }
    public String getLongitud ( ) {
        return longitud;
    }
    public void setLongitud (String longitud) {
        this.longitud = longitud;
    }
    public String getWeb ( ) {
        return web;
    }

    public void setWeb (String web) {
        this.web = web;
    }

    public String getTelefon ( ) {
        return telefon;
    }

    public void setTelefon (String telefon) {
        this.telefon = telefon;
    }
    public String getTrs_codi ( ) {
        return trs_codi;
    }

    public void setTrs_codi (String trs_codi) {
        this.trs_codi = trs_codi;
    }

}
