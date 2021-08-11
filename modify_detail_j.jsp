<%@ page import = "java.sql.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modify Detail</title>
    <link rel="stylesheet" href="style_j.css">
</head>
<body>
        <%  
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            if(session.getAttribute("username") == null){
                response.sendRedirect("index.jsp");
            }
        %>
    <style>
    .card3{
        padding-bottom: 17px;
        margin: 1% 75% 4% 3%;
        
    }
    .Find1{
        padding:5px;
    }
    .regbutton1 button{
        margin:7px;
        border-radius: 10px;
        padding:2px;
    }
    .last-btn{
        margin-left: 30px;
    }
    .btn{
        margin-top:7px;
        border-radius: 50px;
        padding: 2px 5px;
        outline: none;
        position:relative;
        right: -44%;
    }
    </style>
    <div class="continer">
        <div class="title">
            <h1>Payment Billing Product System</h1>
        </div>
        <div class="img">
            <img src="img/Rectangle 2.jpg"  alt="banner" width="100%" height="200px">
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
        <br>
        <div class="card1">
            <div class="newregistration1">
                <form action="updateStu.jsp">
                    <div class="head1">
                        <h2>Student Detail</h2>
                        <br>
                    </div>
                <%
                try{ 
                    Class.forName("com.mysql.cj.jdbc.Driver");  
                    Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root",""); 
     
                    String username=request.getParameter("find_stu"); 
                    PreparedStatement ps = conn.prepareStatement("select * from student_info where username=?");
                    ps.setString(1,username);
                    ResultSet rs = ps.executeQuery(); 
                    while(rs.next()){ 
                    %>
                    <div class="sideheading1">
                        <label for="Name"  class="sidehead1">Name :</label>
                        <input type="text" name="name" value="<%=rs.getString("name")%>" class="input2" required>
                        <br><br>
                        <label for="Course" class="sidehead1">Course :</label>
                        <input type="text" name="course" value="<%=rs.getString("course")%>" class="input2" required>
                        <br><br>
                        <label for="Mobile" class="sidehead1">Mobile :</label>
                        <input type="text" name="mobile" value="<%=rs.getString("mobile")%>" class="input2" required>
                        <br><br>
                        <label for="Father" class="sidehead1">Father name :</label>
                        <input type="text" name="fname" value="<%=rs.getString("father_name")%>" class="input2" required>
                        <br><br>
                        <label for="Mother" class="sidehead1">Mother name :</label>
                        <input type="text" name="mname" value="<%=rs.getString("mother_name")%>" class="input2" required>
                        <br><br>
                        <label for="bg" class="sidehead1">Blood group :</label>
                        <input type="text" name="bg" value="<%=rs.getString("blood_group")%>" class="input2" required>
                        <br><br>
                        <label for="Date of birth" class="sidehead1">Date of birth :</label>
                        <input type="date" name="dob" value="<%=rs.getString("dob")%>" class="input2" required>
                        <br><br>
                        <label for="Date of join" class="sidehead1">Date of join :</label>
                        <input type="date" name="doj" value="<%=rs.getString("doj")%>" class="input2" required>
                        <br><br>
                        <label for="Paid" class="sidehead1">Fee :</label>
                        <input type="text" name="fee" value="<%=rs.getString("fee")%>" class="input2" required>
                        <br><br>
                        <label for="Fee" class="sidehead1">Paid :</label>
                        <input type="text" name="paid" value="<%=rs.getString("paid")%>" class="input2" required>
                        <br><br>
                        <label for="Balance" class="sidehead1">Balance :</label>
                        <input type="text" name="balance" value="<%=rs.getString("balance")%>" class="input2" required>
                        <br><br>
                        <label for="Place" class="sidehead1">Place :</label>
                        <input type="text" name="address" value="<%=rs.getString("address")%>" class="input2" required>
                        <br><br>
                        <label for="Skill" class="sidehead1">Username :</label>
                        <input type="text" name="uname" value="<%=rs.getString("username")%>" class="input2" required>
                        <br><br>
                        <label for="Trainer" class="sidehead1">Password :</label>
                        <input type="text" name="pwd" value="<%=rs.getString("password")%>" class="input2" required>
                        <br><br>
                </div>
                <% }
                 }catch(Exception e){ 
                        System.out.println(e.getMessage()); 
                    } 

            %>
                <div class="last-btn">
                    <select name="option" >
                       <option value="save">Update</option>
                       <option value="delete">Delete</option>
                    </select>
                    <div class="regbutton1">
                     <button type="submit">Submit</button>
                    </div>
                </div>
                </form>


            </div>
        </div>
        <form>
        <div class="card3">
            <div class="head2"><h2>Find Record</h2></div>
                <div class="find">
                    <label for="Find" style="display: inline;">Find :</label>
                    <input name="find_stu" type="text" style="border-radius:60px; border: none; ">
                    <div class="Find1">
                    <button type="submit" class="btn">Submit</button> 
                </div>
                </div>

        </div>
        </form>
        <footer>
            <div class="contactus">
                <ul>
                    <a href="./contact - A.jsp">Contact Us</a>
                </ul>
            </div>
        </footer>
    </div>
</body>
</html>