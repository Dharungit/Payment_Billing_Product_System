<%@ include file="dbCon.jsp"%>

<%
int id = Integer.parseInt(request.getParameter("del-id"));
try{
    String sql = "update contact set rectify=1 where id=?";
    con = DriverManager.getConnection(url, user, dbpsw); 
    PreparedStatement ps1 = con.prepareStatement(sql);
    ps1.setInt(1,id);
    int rs1 = ps1.executeUpdate();

    response.sendRedirect("query.jsp");
}
catch(Exception e){
    out.println(e);
}

%>