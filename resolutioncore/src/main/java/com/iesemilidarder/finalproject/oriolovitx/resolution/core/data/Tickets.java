package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;



public class Tickets extends Clients {
    private String codi;
    private String tipus_facturacio;
    private String data_ticket;
    private String total_tickets;
    private String total_imposts;
    private String fac_codi;
    private String res_codi;


    public
    Tickets (String codi, String tipus_facturacio, String data_ticket, String total_tickets, String total_imposts, String fac_codi, String res_codi) {
        this.codi = codi;
        this.tipus_facturacio = tipus_facturacio;
        this.data_ticket = data_ticket;
        this.total_tickets = total_tickets;
        this.total_imposts = total_imposts;
        this.fac_codi = fac_codi;
        this.res_codi = res_codi;
    }

    public
    String getCodi ( ) {
        return codi;
    }


    public
    void setCodi (String codi) {
        this.codi = codi;
    }

    public
    String getTipus_facturacio ( ) {
        return tipus_facturacio;
    }

    public
    void setTipus_facturacio (String tipus_facturacio) {
        this.tipus_facturacio = tipus_facturacio;
    }

    public
    String getData_ticket ( ) {
        return data_ticket;
    }

    public
    void setData_ticket (String data_ticket) {
        this.data_ticket = data_ticket;
    }

    public
    String getTotal_tickets ( ) {
        return total_tickets;
    }

    public
    void setTotal_tickets (String total_tickets) {
        this.total_tickets = total_tickets;
    }

    public
    String getTotal_imposts ( ) {
        return total_imposts;
    }

    public
    void setTotal_imposts (String total_imposts) {
        this.total_imposts = total_imposts;
    }

    public
    String getFac_codi ( ) {
        return fac_codi;
    }

    public
    void setFac_codi (String fac_codi) {
        this.fac_codi = fac_codi;
    }

    public
    String getRes_codi ( ) {
        return res_codi;
    }

    public
    void setRes_codi (String res_codi) {
        this.res_codi = res_codi;
    }

}

