package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

public class Proveidors extends Tickets {

    private String codi_prov;
    private String cif;
    private String NomEmpresa;
    private String tipus;
    private Double experiencia;
    private Double percentatgeBenefici;
    private Integer Benefici;


    public
    Proveidors (String codi, String tipus_facturacio, String data_ticket, String total_tickets, String total_imposts, String fac_codi, String res_codi) {
        super(codi, tipus_facturacio, data_ticket, total_tickets, total_imposts, fac_codi, res_codi);
    }

    public
    Proveidors (Integer benefici) {

        Benefici = benefici;
    }
}


