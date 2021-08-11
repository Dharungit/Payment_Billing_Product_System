<%@page import = "java.sql.*" %> 

<!DOCTYPE html> 
<html lang="en"> 
<head> 
    <meta charset="UTF-8"> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <link rel="stylesheet" href="style.css"> 
    <title>Change Password</title> 

</head> 
<body>
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
                    <h3 style="position: relative; left: 190px;">Change Password</h3> 
                </li> 
                <li> 
                    <a id='logout' href="./logout.jsp">Logout</a> 
                </li> 
            </ul> 
    </div>
    <form action="changePassBackend.jsp" method="POST"> 
        <div class="change"> 
            <div class="con">
            <label class="label1" for="old">Old Password :</label> 
            <input type="password" name="old_pwd" class="input3" required> 
            <br> 
            <label  class="label1"for="new" class="">New Password :</label> 
            <input type="password" name="new_pwd" class="input3" required> 
            <br> 
            <label class="label1" for="confirm"class="">Confirm Password:</label> 
            <input type="password" name="cnf_pwd" class="input3" required> 
            <br><br> 
            <div class="regbutton"> 
                <input  type="submit" value="Save"> 
            </div>   
            </div> 
        </div> 
    </form>   
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