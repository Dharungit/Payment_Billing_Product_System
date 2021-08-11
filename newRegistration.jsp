<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Admin - Add Accountant</title>
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
                        <a href="changePass.jsp"><b>Change password</b></a>
                    </li>
                    <li>
                        <a id='logout' href="./logout.jsp">Logout</a>
                    </li>
                </ul>
        </div>
        <div class="login">
            <form method="POST" action="./registerAcc.jsp">
                <div class="log_title">
                    <h2 style="color: white ;">New Registration</h2>
                </div>
                <div class="dlb">
                    <p style="color: white; padding-right: 38px; margin-left: -90px;">Branch:</p>
                    <select name="branch">
                        <option value="none">Selet the branch</option>
                        <option value="Coimbatore">Coimbatore</option>
                        <option value="Tiruppur">Tiruppur</option>
                        <option value="Erode">Erode</option>
                    </select>    
                </div>
                <div class="form_continer">
                    <div class="txt_con">
                        <label for="Uname">Name: </label>
                        <input type="text" name="name" required>
                    </div>
                    <div class="txt_con">
                        <label for="Uname">Username: </label>
                        <input type="text"  name="uname" required>
                    </div>
                    <div class="txt_con">
                        <label for="Pwd">Password: </label>
                        <input type="password"  name="pwd" required>
                    </div>
                    <div class="txt_con">
                        <label for="Pwd">Date of Joining: </label>
                        <input type="date"  name="doj" required>
                    </div>
                    <div class="txt_con">
                        <label for="Pwd">Date of Birth: </label>
                        <input type="date"  name="dob" required>
                    </div>
                    <div class="txt_con">
                        <label for="Pwd">Salary: </label>
                        <input type="text"  name="salary" required>
                    </div>
                </div>
                <div class="btn">
                    <button type="submit" style="margin-left: 56px; margin-right: 56px; padding: 0px 20px;">Create</button>
                </div>
            </form>
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