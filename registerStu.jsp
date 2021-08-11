
<%@page import = "java.sql.*" %> 
<%
String name = request.getParameter("name");
String course = request.getParameter("course");
String mobile = request.getParameter("mobile");
String fname = request.getParameter("fname");
String mname = request.getParameter("mname");
String bg = request.getParameter("bg");
String dob = request.getParameter("dob");
String doj = request.getParameter("doj");
String fee = request.getParameter("fee");
String paid = request.getParameter("paid");
String balance = request.getParameter("balance");
String addr = request.getParameter("addr");
String uname = request.getParameter("uname");
String pwd = request.getParameter("pwd");

try{
    Class.forName("com.mysql.cj.jdbc.Driver");  
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root","" );
    PreparedStatement ps = conn.prepareStatement("insert into student_info(name,course,mobile,father_name,mother_name,blood_group,dob,doj,fee,paid,balance,address,username,password) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);");

    ps.setString(1,name);
    ps.setString(2,course);
    ps.setString(3,mobile);
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

   
    ps.executeUpdate();

    response.sendRedirect("Find Record - A.jsp");

}
catch(Exception e){
    out.println(e);
}

%>