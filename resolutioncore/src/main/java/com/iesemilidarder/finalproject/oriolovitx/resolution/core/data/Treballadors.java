package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

public class Treballadors extends Tickets{

    private String codi_treb;
    private String nom;
    private String llinatges;
    private String sector;
    private String ocupacio;
    private Double experiencia;

    public
    Treballadors (String codi, String tipus_facturacio, String data_ticket, String total_tickets, String total_imposts, String fac_codi, String res_codi) {
        super(codi, tipus_facturacio, data_ticket, total_tickets, total_imposts, fac_codi, res_codi);
    }

    public
    Treballadors ( ) {
        super();
    }
}
