<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%> 
<%@ page import="java.sql.*" %>  

<%! String userdbName; 
String userdbPsw;
String sql;
%> 
<% 
Connection con= null; 
PreparedStatement ps = null; 
ResultSet rs = null; 
 
String admin_uname = "admin";
String admin_pwd = "12345";

String driverName = "com.mysql.jdbc.Driver"; 
String url = "jdbc:mysql://localhost:3306/pbps"; 
String user = "root"; 
String dbpsw = ""; 

String username = request.getParameter("username"); 
String password = request.getParameter("password"); 
String role = request.getParameter("role"); 

if(role.equals("1")){
    sql = "select * from admin where username=? and password=?";
}
else if (role.equals("2")){
    sql = "select * from accountant_info where username=? and password=?";
}
else{
    sql = "select * from student_info where username=? and password=?"; 
}
out.println(role);

try{
    if (!(role.equals("0"))){
            Class.forName(driverName); 
            con = DriverManager.getConnection(url, user, dbpsw); 
            ps = con.prepareStatement(sql); 
            ps.setString(1, username); 
            ps.setString(2, password); 
            rs = ps.executeQuery(); 
            if(rs.next()) {
              
                userdbName = rs.getString("username"); 
                userdbPsw = rs.getString("password"); 
                String NameOfUser = rs.getString("name");
       
                
            
                if(username.equals(userdbName) && password.equals(userdbPsw)) 
                { 
                    session.setAttribute("username",userdbName); 
                    session.setAttribute("Name",NameOfUser); 
                    session.setAttribute("password", password); 
                    session.setAttribute("userRole", role);
                   
                    if(role.equals("1")){
                        response.sendRedirect("admin.jsp");
                    } 
                    else if(role.equals("2")){
                        response.sendRedirect("Find Record - A.jsp");
                    }
                    else{
                        response.sendRedirect("student.jsp");
                }
                } 
    }
            else {
                
                response.sendRedirect("indexFail.jsp"); 
                rs.close(); 
                ps.close(); 
            }
            
    }  
    else{
        response.sendRedirect("indexFail2.jsp"); 

    }
}
catch(Exception e){
    out.println(e);
}

 
  
%>