package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;



public class Comandes extends Clients {
    private String codi;
    private String tipus_facturacio;
    private String data_ticket;
    private String total_tickets;



    public
    Comandes (String codi, String tipus_facturacio, String data_ticket, String total_tickets, String total_imposts, String fac_codi, String res_codi) {
        this.codi = codi;
        this.tipus_facturacio = tipus_facturacio;
        this.data_ticket = data_ticket;
        this.total_tickets = total_tickets;



    }

    public
    Comandes ( ) {

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


}

