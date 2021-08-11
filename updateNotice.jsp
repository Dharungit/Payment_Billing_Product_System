<%@page import = "java.sql.*" %> 
<%
String data = request.getParameter("notice_area");

try{
    Class.forName("com.mysql.cj.jdbc.Driver");  
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root","" );
    PreparedStatement ps = conn.prepareStatement("update admin set notice=?");
    ps.setString(1,data);
    ps.executeUpdate();
    response.sendRedirect("notice.jsp");
}
catch(Exception e){
    out.println(e);
}

%>