package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

public class Clients extends Restaurants{

    private String Codi;
    private String Password;
    private String Nom;
    private String Llinatge;
    private String Adreca;
    private String Email;

    public
    Clients (String codi, String password, String Nom, String llinatge, String adreca, String email) {
        this.Codi = codi;
        this.Password = password;
        this.Nom = Nom;
        this.Llinatge = llinatge;
        this.Adreca = adreca;
        this.Email = email;
    }

    public Clients ( ) {

    }

    @Override public String getCodi ( ) {
        return Codi;
    }

    @Override public void setCodi (String codi) {
        Codi = codi;
    }



    public String getPassword ( ) {
        return Password;
    }

    public void setPassword (String password) {
        Password = password;
    }





    @Override public String getNom ( ) {
        return Nom;
    }

    @Override public void setNom (String nom) {
        Nom = nom;
    }
    public String getLlinatge ( ) {
        return Llinatge;
    }

    public void setLlinatge (String llinatge) {
        Llinatge = llinatge;
    }
    public String getAdreca ( ) {
        return Adreca;
    }

    public void setAdreca (String adreca) {
        Adreca = adreca;
    }
    public String getEmail ( ) {
        return Email;
    }

    public void setEmail (String email) {
        Email = email;
    }




}

