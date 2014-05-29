<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%

    Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/desiengg";
    String driver = "com.mysql.jdbc.Driver";
    String userName = "desiengg";
    String password = "des1asdjFVa";
    try {
        Class.forName(driver);
        conn = DriverManager.getConnection(url, userName, password);
        out.println("Connected to the database");
        conn.close();
        out.println("Disconnected from database");
    } catch (Exception e) {
        e.printStackTrace();
    }


%>