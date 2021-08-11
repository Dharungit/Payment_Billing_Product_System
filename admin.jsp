<%@ page import = "java.sql.*" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
    <style>
    #table-con td, #table-con th {
            border: 1px solid #ddd;
            padding: 8px;
        }

    #table-con tr:nth-child(even){background-color: #f2f2f2;}

    #table-con tr:hover {background-color: #ddd;}
    #table-con th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #233141;
    color: white;
    }
    </style>
    <%
        
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

        if(session.getAttribute("username") == null){
            response.sendRedirect("index.jsp");
        }

    %>
    <div class="continer">
        <div class="title">
            <h1>Payment Billing Product System</h1>
        </div>
        <div class="img">
            <img src="img/Rectangle 2.jpg" alt="banner" width="100%" height="200px">
        </div>
        <div class="taskbar">
                <ul>
                    <li>
                        <a href="./admin.jsp" ><b>Home</b></a>
                    </li>
                    <li>
                        <a href="./newRegistration.jsp"><b>New Registration</b></a>
                    </li>
                    <li>
                        <a href="./modify_acc.jsp"><b>Modify Details</b></a>
                    </li>
                    <li>
                        <a href="notice.jsp"><b>Notice</b></a>
                    </li>
                    <li>
                        <a href="query.jsp"><b>Querys</b></a>
                    </li>
                    <li>
                        <a href="changePass.jsp"><b>Change password</b></a>
                    </li>
                    <li>
                        <a id='logout' href="./logout.jsp">Logout</a>
                    </li>
                </ul>
        </div>
        <div class="searchbox">
            <form >
                <div class="src_continer">
                    <div class="src_txt_con">
                        <p style="margin: 10px; padding-right: 20px;">Branch:</p>
                        <select name="branch" style="margin: 0px; padding: 0px;">
                            <option value="none">Selet the branch</option>
                            <option value="Coimbatore">Coimbatore</option>
                            <option value="Tirppur">Tirppur</option>
                            <option value="Erode">Erode</option>
                        </select>
                    </div>
                    <div class="src_txt_con">
                        <label for="find" style="margin-left:10px ;" >Find: </label>
                        <input type="text" name="uname" style="position: absolute; left: 140px; bottom: 17%;">
                    </div>
                    <div class="src_txt_con">
                        <input type="submit" style="position: absolute; left: 140px; bottom: 11%;">
                    </div>
                </div>
            </form>
        </div>
        
    </div>
    <div > 
        <table  style="margin:20px 30px; position: absolute; top:60%; left:35%; width:50%; border-collapse: collapse;" border='.5' id="table-con"  align="center" cellpadding="10" cellspacing="5" > 
            <tr bgcolor="#233141"color="white">
                <th style="color:white;">Branch</th> 
                <th style="color:white;">Name</th> 
                <th style="color:white;">Username</th> 
                <th style="color:white;">Password</th> 
                <th style="color:white;">Date of join</th>
                <th style="color:white;">Date of birth</th> 
                <th style="color:white;">salary</th> 
            </tr> 
            <% 
                try{ 
                    Class.forName("com.mysql.cj.jdbc.Driver");  
                    Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root",""); 
     
                    String username=request.getParameter("uname"); 
                    String branch=request.getParameter("branch"); 
                    PreparedStatement ps = conn.prepareStatement("select * from accountant_info where username=? and branch=?");
                    ps.setString(1,username);
                    ps.setString(2,branch);
                    ResultSet rs = ps.executeQuery(); 
                    while(rs.next()){ 
                        %>
                        <tr> 
                            <td><%=rs.getString("branch")%></td> 
                            <td><%=rs.getString("name")%></td> 
                            <td><%=rs.getString("username")%></td> 
                            <td><%=rs.getString("password")%></td> 
                            <td><%=rs.getString("doj")%></td> 
                            <td><%=rs.getString("dob")%></td> 
                            <td><%=rs.getString("salary")%></td> 
                        </tr>  
                        <% } 
     
                    }catch(Exception e){ 
                        System.out.println(e.getMessage()); 
                    } 
                
            %>
            </table>
            </div>
    <footer>
        <div class="contactus">
            <ul>
                <a href="./contact - A.jsp">Contact Us</a>
            </ul>
        </div>
    </footer>
    
</body>
</html>