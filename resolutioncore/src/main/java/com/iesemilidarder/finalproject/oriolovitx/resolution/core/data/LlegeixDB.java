package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.MySQLConnection;
import com.mysql.jdbc.exceptions.MySQLDataException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.temporal.WeekFields;
import java.util.ArrayList;

public
class LlegeixDB extends OpinionsCli {

    public
    ArrayList LlegeixOpinionsCli (String search) throws ClassNotFoundException, SQLException {
        ArrayList array1 = new ArrayList();
        try {
            Class.forName("mysql.jdbc.Driver");
            Connection con;
            con = (Connection) DriverManager.getConnection("jdbc:mysql:localhost:3306", "system", "system");

            PreparedStatement stmt;
            if ((search != null) && !search.equals("")) {

                stmt = con.prepareStatement("select * from ( select O.OPI_CODI, O.OPI_OBSERVACIO, O.OPI_PUNTUACIO, O.OPI_OPINIO_REVISDA, O.OPI_RES_CODI, O.OPI_CLI_CODI) where ROWNUM <=5");

                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {

                    String codi = rs.getString("OPI_CODI");
                    String observacio = rs.getString("OPI_OBSERVACIO");
                    String puntuacio = rs.getString("OPI_PUNTUACIO");
                    String opinio_revisada = rs.getString("OPI_OPINIO_REVISADA");
                    String codi_res = rs.getString("OPI_RES_CODI");
                    String codi_cli = rs.getString("OPI_CLI_CODI");
                    OpinionsCli rts = new OpinionsCli();
                    rts.setId(codi);
                    rts.setObservacio(observacio);
                    rts.setOprevisada(opinio_revisada);
                    rts.setRestcodi(codi_res);
                    rts.setUscodi(codi_cli);

                }
                stmt.close();
                con.close();
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return array1;
    }
}
