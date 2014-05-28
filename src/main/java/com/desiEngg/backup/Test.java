package com.desiEngg.backup;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created with IntelliJ IDEA.
 * User: Sridhar
 * Date: 5/27/14
 * Time: 4:12 PM
 * To change this template use File | Settings | File Templates.
 */
public class Test {
    public static void main(String[] args)
    {
        System.out.println("MySQL Connect Example.");
        Connection conn = null;
        String url = "jdbc:mysql://118.67.244.39/";
        String dbName = "desiengg";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "desiengg";
        String password = "des1asdjFVa";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected to the database");
            conn.close();
            System.out.println("Disconnected from database");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
