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
    Proveidors (String codi, String tipus_facturacio, String data_ticket, String unitats) {
        super(codi, tipus_facturacio, data_ticket, unitats);
    }

    public
    Proveidors (Integer benefici) {

        Benefici = benefici;
    }
}


