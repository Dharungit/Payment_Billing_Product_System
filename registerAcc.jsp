<%@page import = "java.sql.*" %> 
<%
String branch = request.getParameter("branch");
String name = request.getParameter("name");
String username = request.getParameter("uname");
String password = request.getParameter("pwd");
String doj = request.getParameter("doj");
String dob = request.getParameter("dob");
String salary = request.getParameter("salary");

try{
    Class.forName("com.mysql.cj.jdbc.Driver");  
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root","" );
    PreparedStatement ps = conn.prepareStatement("insert into accountant_info(branch,name,username,password,doj,dob,salary) values(?,?,?,?,?,?,?);");

    ps.setString(1,branch);
    ps.setString(2,name);
    ps.setString(3,username);
    ps.setString(4,password);
    ps.setString(5,doj);
    ps.setString(6,dob);
    ps.setString(7,salary);

   
    ps.executeUpdate();

    response.sendRedirect("newRegistration.jsp");


    

}
catch(Exception e){
    out.println(e);

}

%>