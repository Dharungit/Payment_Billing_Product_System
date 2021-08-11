<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Registration</title>
    <link rel="stylesheet" href="style_j.css">
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

        <div class="card">
            <div class="newregistration">
                <form action="registerStu.jsp" method="POST">
                    <div class="head">
                        <h2 >Student Detail</h2>
                        <br>
                    </div>
                    <div class="sideheading">
                        
                        <br>
                        <label for="Name"  class="sidehead">Name :</label>
                        <input type="text" name="name" class="input1" required>
                        <br><br>
                        <label for="Course" class="sidehead">Course :</label>
                        <input type="text" name="course" class="input1" required>
                        <br><br>
                        <label for="Mobile" class="sidehead">Mobile :</label>
                        <input type="text" name="mobile" class="input1" required>
                        <br><br>
                        <label for="Father" class="sidehead">Father's name :</label>
                        <input type="text" name="fname" class="input1" required>
                        <br><br>
                        <label for="Mother" class="sidehead">Mother's name :</label>
                        <input type="text" name="mname" class="input1" required>
                        <br><br>
                        <label for="Qualification" class="sidehead">Blood Group :</label>
                        <input type="text" name="bg" class="input1" required>
                        <br><br>
                        <label for="Date of birth" class="sidehead">Date of birth :</label>
                        <input type="date" name="dob" class="input1" required>
                        <br><br>
                        <label for="Date of join" class="sidehead">Date of join :</label>
                        <input type="date" name="doj" class="input1" required>
                        <br><br>
                        <label for="Paid" class="sidehead">Fee :</label>
                        <input type="text" name="fee" class="input1" required>
                        <br><br>
                        <label for="Fee" class="sidehead">Paid :</label>
                        <input type="text" name="paid" class="input1" required>
                        <br><br>
                        <label for="Balance" class="sidehead">Balance :</label>
                        <input type="text" name="balance" class="input1" required>
                        <br><br>
                        <label for="Place" class="sidehead">Address :</label>
                        <input type="text" name="addr" class="input1" required>
                        <br><br>
                        <label for="Skill" class="sidehead">Username :</label>
                        <input type="text" name="uname" class="input1" required>
                        <br><br>
                        <label for="Trainer" class="sidehead">Password :</label>
                        <input type="text" name="pwd" class="input1" required>
                        <br><br>
                </div>
                    <div class="regbutton">
                       <input style="margin-left: 56px; margin-right: 56px; padding: 5px 20px 5px 20px; border-radius: 30px; border-style: none; cursor: pointer; background-color: white;" type="submit" value="Save">
                       
                    </div>
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