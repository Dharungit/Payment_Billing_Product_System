<%@ include file="dbCon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>welcom page</title>
    
</head>
<body>
<style>
.profile .profile-img, .profile .details{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.profile-img{
    /* position: relative;
    left: 35px; */
    margin: 10px;
}
.profile-img .title-user{
    /* position: relative;
    left: -20px; */
    color: #233141;
}
.details {
    margin: 20px;
}
.details table{
    border-collapse: collapse;
    width:40%;
}
th{
    background-color: #233141;
    color: #fff;
}
th, td {
    text-align: center;
    padding: 30px 20px;
    border: 3px solid #233141;
}

.table{
    box-sizing: border-box;
    margin: 30px;
    
}
.column1,.column2,.column3 {
  float: left;
  width: 23.33%;
  padding: 10px;
  height: 200px; 
}
.column1{background-color:#233141; border-bottom-left-radius: 10px; border-top-left-radius: 10px;}
.column2{background-color:rgb(70, 197, 70);}
.column3{background-color:rgba(216, 45, 45, 0.87);border-bottom-right-radius: 10px; border-top-right-radius: 10px;}
.row {
    margin-left: 260px;
}
.row:after {
  content: "";
  display: table;
  clear: both;
}
h2,p{color: #fff;}
p{
    font-size: xx-large;
    font-weight: 700;
}
.column2:hover{
    background-color: rgb(12, 175, 47);
}
.column3:hover{
    background-color:rgb(233, 16, 16) ;
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
                    <a style="position: relative; left: 100px;">Details</a>
                </li>
                <li>
                    <a  href="payment form.jsp"style="position: relative; left: 100px;">Payment</a>
                </li>
                <li>
                    <a  href="studentQuery.jsp"style="position: relative; left: 100px;">Querys</a>
                </li>
                <li>
                    <a  href="paymentLog.jsp"style="position: relative; left: 100px;">Payment Log</a>
                </li>
                <li>
                    <a  href="./changePass.jsp"style="position: relative; left: 100px;">Change Password</a>
                </li>
                <li>
                    <a id='logout' href="./logout.jsp">Logout</a>
                </li>
            </ul>
    </div> 
    <div class="profile">
        <div class="profile-img">
            <img src="img/vippng.com-profile-picture-png-3631840.png" width="170px" height="170px"/>
            <h1 class="title-user">Welcome ${Name}</h1>
        </div>
        <div class="details">
            <table>
            <% 
            try{
                String Uname = (String)session.getAttribute("username");
                String sql = "select * from student_info where username=?";
                ps = con.prepareStatement(sql);
                ps.setString(1,Uname);
                rs = ps.executeQuery();
                while(rs.next()){
                %>
                <tr>
                    <th>Father's Name</th>
                    <td><%=rs.getString("father_name")%></td>
                </tr>
                <tr>
                    <th>Mother's Name</th>
                    <td><%=rs.getString("mother_name")%></td>
                </tr>
                <tr>
                    <th>Course</th>
                    <td><%=rs.getString("course")%></td>
                </tr>
                <tr>
                    <th>Mobile</th>
                    <td><%=rs.getString("mobile")%></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td><%=rs.getString("address")%></td>
                </tr>
                
            </table>
        </div>
        <div class="table">
            <div class="row">
                <div class="column1" >
                  <h2>FEES</h2>
                  <p><%=rs.getString("fee")%></p>
                </div>
                <div class="column2" >
                  <h2>PAID</h2>
                  <p><%=rs.getString("paid")%></p>
                </div>
                <div id="bal-con" class="column3" >
                  <h2>BALANCE</h2>
                  <p id="bal"><%=rs.getString("balance")%></p>
                </div>
                
              </div>
        </div>
        <%}}
                catch(Exception e){ 
                        System.out.println(e.getMessage()); 
                    } %>
    </div> 
    </div>
    <script>
        if(document.getElementById("bal").innerHTML == 0){
            document.getElementById("bal-con").style.backgroundColor = "rgb(70, 197, 70)";
           
        }
    </script>
    <footer>
        <div class="contactus">
            <ul>
                <a href="./contact - A.jsp">Contact Us</a>
            </ul>
        </div>
    </footer>
   
</body>
</html>