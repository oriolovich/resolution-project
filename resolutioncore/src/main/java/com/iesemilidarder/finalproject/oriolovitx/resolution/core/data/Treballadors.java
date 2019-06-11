package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

public class Treballadors extends Tickets{

    private String codi_treb;
    private String nom;
    private String llinatges;
    private String sector;
    private String ocupacio;
    private Double experiencia;
    private Integer MitjanaSalari;


    public
    Treballadors (String codi, String tipus_facturacio, String data_ticket, String unitats) {
        super(codi, tipus_facturacio, data_ticket, unitats);
    }

    public
    Treballadors ( ) {
        super();
    }
}
