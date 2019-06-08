package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

public abstract class FacturacioxTickets extends Tickets {
    public
    FacturacioxTickets (String codi, String tipus_facturacio, String data_ticket, String total_tickets, String total_imposts, String fac_codi, String res_codi) {
        super(codi, tipus_facturacio, data_ticket, total_tickets, total_imposts, fac_codi, res_codi);
    }

    public
    Double getComandesproveidors ( ) {
        return Comandesproveidors;
    }

    public
    void setComandesproveidors (Double comandesproveidors) {
        Comandesproveidors = comandesproveidors;
    }

    private Double Comandesproveidors;

    public
    Double getComandesrestaurants ( ) {
        return Comandesrestaurants;
    }

    public
    void setComandesrestaurants (Double comandesrestaurants) {
        Comandesrestaurants = comandesrestaurants;
    }

    private Double Comandesrestaurants;

    public
    Double getMijtanaSouTreballadors ( ) {
        return mijtanaSouTreballadors;
    }

    public
    void setMijtanaSouTreballadors (Double mijtanaSouTreballadors) {
        this.mijtanaSouTreballadors = mijtanaSouTreballadors;
    }

    private Double mijtanaSouTreballadors;

}


