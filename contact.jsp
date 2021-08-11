<%@page import = "java.sql.*" %> 
<%
String query = request.getParameter("user_query");
String name = request.getParameter("userName");
String uName = (String)session.getAttribute("username");
try{
    Class.forName("com.mysql.cj.jdbc.Driver");  
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root","" );
    PreparedStatement ps = conn.prepareStatement("insert into contact(msg_timing,name,username,msg) values(?,?,?,?)");

    ps.setTimestamp(1, new java.sql.Timestamp(new java.util.Date().getTime()));
    ps.setString(2,name);
    ps.setString(3,uName);
    ps.setString(4,query);
    ps.executeUpdate();
    response.sendRedirect("contact - A.jsp");
}
catch(Exception e){
    out.println(e);
}

%>