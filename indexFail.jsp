<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%> 
<%@page import="java.sql.*" %>
 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>welcome page</title>
    <script>
        alert("Invalide username and password")
    </script>
</head>
<body>
    <div class="continer">
        <div class="title">
            <h1>Payment Billing Product System</h1>
        </div>
        <div class="img">
            <img src="img/Rectangle 2.jpg" alt="banner" width="100%" height="200px">
        </div>
        <div class="taskbar">
            
        </div>
        <div class="login"> 
            <form method="POST" name="form" action="login.jsp" > 
                <div class="log_title"> 
                    <h2 style="color: white;">Login</h2> 
                </div> 
                <div class="dlb1"> 
                    <p onclick="Checkrole" style="color: white; padding-right: 38px; margin-left: -90px;">Role:</p> 
                    <select name="role" style="position: relative; bottom: 25px; left: 9px; padding: 2.5px 7px;"> 
                        <option value="0" >Select the role</option> 
                        <option value="3">Student</option> 
                        <option value="1">Admin</option> 
                        <option value="2">Accountent</option>   
                    </select> 
                </div>
                <div class="form_continer" style="position: relative ; top:-20px"> 
                    <div class="txt_con"> 
                        <label for="email">Username: </label> 
                        <input type="text" name="username" required> 
                        <div id="emailerror">Please fill up a valid Username</div> 
                    </div> 
                    <div class="txt_con">  
                        <label for="password">Password: </label> 
                        <input type="password" name="password" required> 
                        <div id="passerror">Invalid Password </div> 
                    </div> 
                </div> 
                <div class="btn">
                    <button type="submit" style="margin-left: 56px; margin-right: 56px;">Login</button>
                    
                </div>
            </form>
            <div id="main">
				<table align="right">
					<tr align="center">
						<td style="color: white"><B>Notice</B></td>
					</tr>
					<tr>
						<td>
							<div>
                            <%
                            try{
                                Class.forName("com.mysql.cj.jdbc.Driver");  
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root","" );
                                String sql = "select * from admin";
                                Statement stmt=conn.createStatement();
                                ResultSet rs = stmt.executeQuery(sql);
                                while (rs.next())
                                {
                                
                            %>
                                    <marquee id="notice_board"  direction="up" width="300px" truespeed="truespeed" onmouseover="stop()"
                                        onmouseout="start()" style="color: white;">
                                        <%=rs.getString("notice") %> 
                                    
                               <%
                                } %>
                                </marquee>
                                <%
                                rs.close();
                                stmt.close();
                                conn.close();
                                }
                                catch(Exception e)
                                {
                                e.printStackTrace();
                                }
                                %>
                                
							</div>
						</td>
					</tr>
				</table>
        </div>
    </div>
    <footer>
        <div class="contactus">
            <ul>
                <a href="./contact - A.jsp">Contact Us</a>
            </ul>
        </div>
    </footer>
    <script src="display.js"></script>
</body>
</html>
