
<%@ page import="java.sql.*" %>

<%

Connection con= null; 
PreparedStatement ps = null; 
ResultSet rs = null; 

String driverName = "com.mysql.jdbc.Driver"; 
String url = "jdbc:mysql://localhost:3306/pbps"; 
String user = "root"; 
String dbpsw = ""; 

Class.forName(driverName); 
con = DriverManager.getConnection(url, user, dbpsw);
%>