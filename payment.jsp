<%@ page import="java.sql.*" %>

<%int amount = Integer.parseInt(request.getParameter("amount"));%>
<%
Connection con= null; 
 
PreparedStatement ps = null; 
 
ResultSet rs = null; 
String userName = (String)session.getAttribute("username");
String Name = (String)session.getAttribute("Name");
String Ucourse = null;
try{
    String driverName = "com.mysql.jdbc.Driver"; 
    String url = "jdbc:mysql://localhost:3306/pbps"; 
    String user = "root"; 
    String dbpsw = ""; 

    Class.forName(driverName); 
    con = DriverManager.getConnection(url, user, dbpsw);
    String sql_user = "select * from student_info where username='"+userName+"'";
    String sql_payment = "insert into payment_details(username,Name,Amount,Course) values(?,?,?,?)";
    String sql_update = "update student_info set balance=balance-?,paid=paid+? where username=?";
    ps = con.prepareStatement(sql_user);
    rs = ps.executeQuery();
    if(rs.next()){
    Ucourse = rs.getString("course");
    }
    ps = con.prepareStatement(sql_update);
    ps.setInt(1,amount);
    ps.setInt(2,amount);
    ps.setString(3,userName);
    int rs1 = ps.executeUpdate();   

    ps =con.prepareStatement(sql_payment);
    ps.setString(1,userName);
    ps.setString(2,Name);
    ps.setInt(3,amount);
    ps.setString(4,Ucourse);

    ps.executeUpdate();


    response.sendRedirect("student.jsp");
}
catch(Exception e){
    out.println(e);
}

%>