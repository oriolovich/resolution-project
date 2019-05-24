package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

public class Tickets extends Restaurants {
    private String codi;
    private String data_ticket;
    private String total_ltickets;
    private String total_imposts;
    private String fac_codi;
    private String res_codi;


    public Tickets (String codi, String data_ticket, String total_ltickets, String total_imposts, String fac_codi, String res_codi) {
        this.codi = codi;
        this.data_ticket = data_ticket;
        this.total_ltickets = total_ltickets;
        this.total_imposts = total_imposts;
        this.fac_codi = fac_codi;
        this.res_codi = res_codi;
    }
    @Override
    public
    String getCodi ( ) {
        return codi;
    }

    @Override
    public
    void setCodi (String codi) {
        this.codi = codi;
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
    String getTotal_ltickets ( ) {
        return total_ltickets;
    }

    public
    void setTotal_ltickets (String total_ltickets) {
        this.total_ltickets = total_ltickets;
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
