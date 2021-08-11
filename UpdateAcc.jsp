<%@page import = "java.sql.*" %> 

<%
String option = request.getParameter("option");
String username ="";

try{
    String name = request.getParameter("name");
    String dob = request.getParameter("dob");
    String doj = request.getParameter("doj");
    String uname = request.getParameter("uname");
    String pwd = request.getParameter("pwd");
    String branch = request.getParameter("branch");
    String salary = request.getParameter("salary");

    Class.forName("com.mysql.cj.jdbc.Driver");  
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root","" );
    if (option.equals("save")){
        PreparedStatement ps = conn.prepareStatement("update accountant_info set branch=?,name=?,username=?,password=?,doj=?,dob=?,salary=? where username=?");
        ps.setString(1,branch);
        ps.setString(2,name);
        ps.setString(3,uname);
        ps.setString(4,pwd);
        ps.setString(5,doj);
        ps.setString(6,dob);
        ps.setString(7,salary);
        ps.setString(8,uname);
        ps.executeUpdate();
        response.sendRedirect("modify_acc.jsp");
    }
    else{
        username=request.getParameter("uname"); 
        PreparedStatement ps = conn.prepareStatement("delete from accountant_info where username=?");
        ps.setString(1,username);
        ps.executeUpdate();
        response.sendRedirect("modify_acc.jsp");
    }
    
}
catch(Exception e){
    out.println(e);
}

%>