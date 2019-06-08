package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

import org.springframework.stereotype.Service;

public class Proveidors extends FacturacioxTickets {

    private String codi_prov;
    private String cif;
    private String NomEmpresa;
    private String tipus;
    private Double experiencia;


    public
    Proveidors (String codi, String tipus_facturacio, String data_ticket, String total_tickets, String total_imposts, String fac_codi, String res_codi) {
        super(codi, tipus_facturacio, data_ticket, total_tickets, total_imposts, fac_codi, res_codi);
    }
}


