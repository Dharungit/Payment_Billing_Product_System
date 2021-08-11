<%@page import = "java.sql.*" %> 

<%
String option = request.getParameter("option");
String username ="";

try{
    
    String name = request.getParameter("name");
    String cors = request.getParameter("course");
    String mbl = request.getParameter("mobile");
    String fname = request.getParameter("fname");
    String mname = request.getParameter("mname");
    String bg = request.getParameter("bg");
    String dob = request.getParameter("dob");
    String doj = request.getParameter("doj");
    String fee = request.getParameter("fee");
    String paid = request.getParameter("paid");
    String balance = request.getParameter("balance");
    String addr = request.getParameter("address");
    String uname = request.getParameter("uname");
    String pwd = request.getParameter("pwd");

    Class.forName("com.mysql.cj.jdbc.Driver");  
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root","" );
    if (option.equals("save")){
        PreparedStatement ps = conn.prepareStatement("update student_info set name=?,course=?,mobile=?,father_name=?,mother_name=?,blood_group=?,dob=?,doj=?,fee=?,paid=?,balance=?,address=?,username=?,password=? where username=?");
        ps.setString(1,name);
        ps.setString(2,cors);
        ps.setString(3,mbl);
        ps.setString(4,fname);
        ps.setString(5,mname);
        ps.setString(6,bg);
        ps.setString(7,dob);
        ps.setString(8,doj);
        ps.setString(9,fee);
        ps.setString(10,paid);
        ps.setString(11,balance);
        ps.setString(12,addr);
        ps.setString(13,uname);
        ps.setString(14,pwd);
        ps.setString(15,uname);
        ps.executeUpdate();
        response.sendRedirect("modify_detail_j.jsp");
    }
    else{
        username=request.getParameter("uname"); 
        PreparedStatement ps = conn.prepareStatement("delete from student_info where username=?");
        ps.setString(1,username);
        ps.executeUpdate();
        response.sendRedirect("modify_detail_j.jsp");
    }
    
}
catch(Exception e){
    out.println(e);
}

%>