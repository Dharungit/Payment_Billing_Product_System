<%@ page import = "java.sql.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style-A.css">
    <title>Document</title>
</head>

<body>
<%  
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

        if(session.getAttribute("username") == null){
            response.sendRedirect("index.jsp");
        }
    %>
    <style>
        .btn{
            margin-left: 70px;
            margin-top: 10px;
            padding: 3px;
        }
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
        color: white;}

        .Find{
            margin-right:70%;
            position:absolute;
            left:-10px;
                }
    </style>
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
                        <a href="./Find Record - A.jsp"><b>Home</b></a>
                    </li>
                    <li>
                        <a href="./new_registration_j.jsp"><b>New Registration</b></a>
                    </li>
                    <li>
                        <a href="./modify_detail_j.jsp"><b>Modify Details</b></a>
                    </li>
                    <li>
                        <a href="./paymentLogAcc.jsp"><b>Payment Log</b></a>
                    </li>
                    <li>
                        <a href="./changePass.jsp"><b>Change Password</b></a>
                    </li>
                    <li>
                        <a id='logout' href="./logout.jsp">Logout</a>
                    </li>
                </ul>
        </div>
        <div class="Find">
            <form>
                <div class="Find_record">
                    <h3 style="color: white; padding: 0px 0px 20px 0px; margin-left: 65px; ">Find Record</h2>
                </div>
             
                <div class="Find1">
                    <label for="Find" style="color: white; font-weight: 500;">Find:</label>
                    <input type="text" name="st_uname" required>  
                </div>
                <div class="Find1">
                    <button type="submit" class="btn">Submit</button> 
                </div>
                <br>  
            </form>
            <div> 
        <form  >
            <table  style="margin:20px 30px; position: absolute; top:0%; left:98%; width:50%; border-collapse: collapse;" border='.5' id="table-con"  align="center" cellpadding="10" cellspacing="5" > 
            <tr bgcolor="#233141"color="white">
                <th style="color:white;">Name</th> 
                <th style="color:white;">Course</th> 
                <th style="color:white;">Mobile</th> 
                <th style="color:white;">Father's Name</th> 
                <th style="color:white;">Mother's Name</th>
                <th style="color:white;">Blood Group</th> 
                <th style="color:white;">Date Of Birth</th> 
                <th style="color:white;">Date Of Join</th> 
                <th style="color:white;">Fee</th> 
                <th style="color:white;">Paid</th> 
                <th style="color:white;">Balance</th> 
                <th style="color:white;">Address</th> 
                <th style="color:white;">Username</th>
                <th style="color:white;">Password</th>
                  
            </tr> 
            <% 
                try{ 
                    Class.forName("com.mysql.cj.jdbc.Driver");  
                    Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root",""); 
     
                    String username=request.getParameter("st_uname"); 
                    PreparedStatement ps = conn.prepareStatement("select * from student_info where username=?");
                    ps.setString(1,username);
                    ResultSet rs = ps.executeQuery();
             
                    while(rs.next()){ 
                        %>
                        <tr> 
                            <td><%=rs.getString("name")%></td> 
                            <td><%=rs.getString("course")%></td> 
                            <td><%=rs.getString("mobile")%></td> 
                            <td><%=rs.getString("father_name")%></td> 
                            <td><%=rs.getString("mother_name")%></td> 
                            <td><%=rs.getString("blood_group")%></td> 
                            <td><%=rs.getString("dob")%></td> 
                            <td><%=rs.getString("doj")%></td> 
                            <td><%=rs.getString("fee")%></td> 
                            <td><%=rs.getString("paid")%></td> 
                            <td><%=rs.getString("balance")%></td> 
                            <td><%=rs.getString("address")%></td> 
                            <td><%=rs.getString("username")%></td> 
                            <td><%=rs.getString("password")%></td>
                             
                        </tr>  
                        <% } 
                    }catch(Exception e){ 
                        System.out.println(e.getMessage()); 
                    } 
                
            %>
            </table>
            </form>
            </div>
        </div>
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