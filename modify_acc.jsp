<%@ page import = "java.sql.*" %> 
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modify Detail</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<style>
.card3{
    background-color: #233141;
    box-shadow: 7PX 8px 11px 1PX rgba(0, 0, 0, 0.548) ;

    display: flex;
    flex-direction: column;
    justify-content:center ;
    
    margin: 2% 75% 4% 3%;
    padding-bottom: 50px;
    border-radius: 40px;
    position:absolute;
    top: 60%;
    right: -800px;
    

}
.head2{
    color: white;
    display: flex;
    flex-direction: row;
    justify-content: center;
    padding: 2% 10% 5px 10%;
   

}
.find{
    color: white;
    padding-top: 30px;
    padding-left: 80px;
    padding-right: 80px;
    font-size: 18px;
    font-weight: 600;
    
    /* background-color: orange;
 */}
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
                        <a href="./admin.jsp"><b>Home</b></a>
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
                        <a href="./changePass.jsp"><b>Change Password</b></a>
                    </li>
                    <li>
                        <a id='logout' href="./logout.jsp">Logout</a>
                    </li>
                </ul>
        </div>
        <br>
        <div class="login" style="margin: 2% 53% 2% 2%;">
            <form method="POST" action="UpdateAcc.jsp">
                <div class="log_title">
                    <h2 style="color: white ;">Accoutent Details</h2>
                </div>
                <%
                try{
                   
                    Class.forName("com.mysql.cj.jdbc.Driver");  
                    Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root",""); 
     
                    String username=request.getParameter("find_acct"); 
                    PreparedStatement ps = conn.prepareStatement("select * from accountant_info where username=?");
                    ps.setString(1,username);
                    ResultSet rs = ps.executeQuery(); 
                    while(rs.next()){
                %>
                <div class="dlb">
                    <p style="color: white; padding-right: 38px; margin-left: -90px;">Branch:</p>
                    <select name="branch">
                        <option value="<%=rs.getString("branch")%>"><%=rs.getString("branch")%></option>
                        <option value="Coimbatore">Coimbatore</option>
                        <option value="Tiruppur">Tiruppur</option>
                        <option value="Erode">Erode</option>
                    </select>    
                </div>
                <div class="form_continer">
                    <div class="txt_con">
                        <label for="Uname">Name: </label>
                        <input type="text" name="name"  value="<%=rs.getString("name")%>" required>
                    </div>
                    <div class="txt_con">
                        <label for="Uname">Username: </label>
                        <input type="text"  name="uname"  value="<%=rs.getString("username")%>" required>
                    </div>
                    <div class="txt_con">
                        <label for="Pwd">Password: </label>
                        <input type="password" name="pwd" value="<%=rs.getString("password")%>" required>
                    </div>
                    <div class="txt_con">
                        <label for="Pwd">Date of Joining: </label>
                        <input type="date"  name="doj" value="<%=rs.getString("doj")%>" required>
                    </div>
                    <div class="txt_con">
                        <label for="Pwd">Date of Birth: </label>
                        <input type="date"  name="dob" value="<%=rs.getString("dob")%>" required>
                    </div>
                    <div class="txt_con">
                        <label for="Pwd">Salary: </label>
                        <input type="text"  name="salary"  value="<%=rs.getString("salary")%>" required>
                    </div>
                </div>
                <%}}
                catch(Exception e){
                out.println(e);
                }
                %>
                <div class="last-btn">
                    <select name="option" style="margin-left: 75px; ">
                       <option value="save">Update</option>
                       <option value="delete">Delete</option>
                    </select>
                </div>
                <div class="btn" style="margin-left: -5px;">
                    <button type="submit" style="margin-left: 56px; margin-right: 56px; padding: 0px 20px;">Submit</button>
                </div>
            </form>
        </div>
        <form>
        <div class="card3">
            <div class="head2"><h2>Find Record</h2></div>
                <div class="find">
                    <label for="Find" style="display: inline;">Find :</label>
                    <input name="find_acct" type="text" style="border-radius:60px; border: none; ">
                    <div class="Find1" style="margin-left: 85px;">
                    <button type="submit" class="btn" style="padding: 2px 3px; ">Submit</button> 
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
    