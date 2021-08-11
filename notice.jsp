<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="style.css">
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
                        <a href="./changePass.jsp"><b>Change Password</b></a>
                    </li>
                    <li>
                        <a id='logout' href="./logout.jsp">Logout</a>
                    </li>
                </ul>
        </div>
        <div class="notice">
            <h2>Notice Board</h2>
            <form action="updateNotice.jsp">
                <textarea  name="notice_area" id="notice_area" cols="80" rows="10">
                </textarea>
                <button type="submit">submit</button>
            </form>
        </div>
    </div>
   
</body>
</html>