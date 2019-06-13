package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

public abstract  class Tickets extends Restaurants implements Restauracio{

        public
        Tickets (String codi, String data_ticket, String descripció, String fac_codi) {

        }

        public
        Tickets ( ) {

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

        private String codi;

        public
        String getData_ticket ( ) {
                return data_ticket;
        }

        public
        void setData_ticket (String data_ticket) {
                this.data_ticket = data_ticket;
        }

        private String data_ticket;

        public
        String getDescripcio ( ) {
                return descripcio;
        }

        public
        void setDescripcio (String descripcio) {
                this.descripcio = descripcio;
        }

        private String descripcio;

        public
        String getFac_codi ( ) {
                return fac_codi;
        }

        public
        void setFac_codi (String fac_codi) {
                this.fac_codi = fac_codi;
        }

        private String fac_codi;

        public
        String getRes_codi ( ) {
                return res_codi;
        }

        public
        void setRes_codi (String res_codi) {
                this.res_codi = res_codi;
        }

        private String res_codi;

        public
        String getProv_codi ( ) {
                return prov_codi;
        }

        public
        void setProv_codi (String prov_codi) {
                this.prov_codi = prov_codi;
        }

        private String prov_codi;

        public
        String getUnitats ( ) {
                return unitats;
        }

        public
        void setUnitats (String unitats) {
                this.unitats = unitats;
        }

        private String unitats;

        public
        String getPercentatgeBenefici ( ) {
                return percentatgeBenefici;
        }

        public
        void setPercentatgeBenefici (String percentatgeBenefici) {
                this.percentatgeBenefici = percentatgeBenefici;
        }

        private String percentatgeBenefici;

        public
        Integer getBenefici ( ) {
                return Benefici;
        }

        public
        void setBenefici (Integer benefici) {
                Benefici = benefici;
        }

        private Integer Benefici;
    }
