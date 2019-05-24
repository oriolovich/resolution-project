package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

public class Usuaris extends Opinions {

    private String Codi;
    private String Password;
    private String Nom;
    private String Email;

    public
    Usuaris (String codi, String password, String Nom, String Email) {
        this.Codi = codi;
        this.Password = password;
        this.Nom = Nom;
        this.Email = Email;
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



    public String getEmail ( ) {
        return Email;
    }

    public void setEmail (String email) {
        Email = email;
    }




}

