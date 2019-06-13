package com.iesemilidarder.finalproject.oriolovitx.resolution.core.data;

import java.sql.SQLException;
import java.util.ArrayList;

public
class ProvaDB {

    public static void main (String ... args) throws SQLException, ClassNotFoundException {
        LlegeixDB db = new LlegeixDB();
        ArrayList data = db.LlegeixOpinionsCli("");
        System.out.println("Araaa!");
    }
}
