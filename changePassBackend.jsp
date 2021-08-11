<%@page import = "java.sql.*" %> 

<%
    Connection conn= null; 
    PreparedStatement p1 = null; 
PreparedStatement p2 = null; 
    ResultSet rs = null;
    ResultSet rs1 = null;
    String real_pwd = null;
    String old_pwd = request.getParameter("old_pwd");
    String new_pwd = request.getParameter("new_pwd");
    String cnf_pwd = request.getParameter("cnf_pwd");
    String ses_role = (String)session.getAttribute("userRole");
    String ses_uname = (String)session.getAttribute("username");
    
 
        Class.forName("com.mysql.cj.jdbc.Driver");  
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root","");
        if (ses_role.equals("1")){
            p1 = conn.prepareStatement("select * from admin where username=?");
            p1.setString(1, ses_uname);
            rs = p1.executeQuery();
            }
        else if (ses_role.equals("2")){
            p1 = conn.prepareStatement("select * from accountant_info where username=?");
            p1.setString(1, ses_uname);
            rs = p1.executeQuery();
            }
        else{
            p1 = conn.prepareStatement("select * from student_info where username=?");
            p1.setString(1, ses_uname);
            rs = p1.executeQuery();
        }
        
        if(rs.next()){
            real_pwd = rs.getString("password");
            if(old_pwd.equals(real_pwd)){
                    if (ses_role.equals("1")){
                    p2 = conn.prepareStatement("update admin set password=? where username=?");
                    p2.setString(1, new_pwd);
                    p2.setString(2, ses_uname);
                    p2.executeUpdate();
                    }
                    else if (ses_role.equals("2")){
                    p2 = conn.prepareStatement("update accountant_info set password=? where username=?");
                    p2.setString(1, new_pwd);
                    p2.setString(2, ses_uname);
                    p2.executeUpdate();
                    }
                    else{
                    p2 = conn.prepareStatement("update student_info set password=? where username=?");
                    p2.setString(1, new_pwd);
                    p2.setString(2, ses_uname);
                    p2.executeUpdate();
                }
                response.sendRedirect("changePass.jsp");
            }
            else{
    
                response.sendRedirect("changePass.jsp");
            }
        }

    
 
%>