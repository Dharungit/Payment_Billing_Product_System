<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>content us</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .back{
            position: relative;
            background-color: #233141;
            padding: 15px;
            top: -5px;
        }
        .back input{
            padding: 8px;
            border-radius: 5px;
            
        }
        .contact-con{
            background-color: #233141;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin: 50px 30%;
            border-radius: 10px;
            padding: 20px;
        }
        .title-cont{
            margin: 0px 0 10px 0;
        }
        .title-cont h3{
            color: #fff;
            font-size: x-large;
        }
        .txtarea{
            margin: 10px;
        }
        .txtarea textarea{
            outline: none;
            border-radius: 10px;
        }
        .namearea{
            margin: 5px;
        }
        .namearea h3{
            color: #fff;
        }
        .inp input{
            padding: 0px 10px;
        }
        .subbtn{
            margin: 5px;
        }
        .subbtn button{
            padding: 5px 10px;
        }
    </style>
    <div class="continer">
        <div class="title">
            <h1>Payment Billing Product System</h1>
        </div>
        <div class="img">
            <img src="img/Rectangle 2.jpg" alt="banner" width="100%" height="200px">
        </div>
    </div>
    <form action="student.jsp">
    <div class="back">
        <input  class="back-btn" TYPE="submit" VALUE="Back">
    </div>
    </form>
    <form action="./contact.jsp">
    <div class="contact-con">
        <div class="title-cont">
            <h3 class="title-c">Query</h3>
        </div>
        <div class="txtarea">
            <textarea name="user_query"  cols="50" rows="10"></textarea>
        </div>
        <div class="namearea">
            <h3>Name</h3>
        </div>
        <div class="inp">
            <input type="text" name="userName">
        </div>
        <div class="subbtn">
            <button type="submit">submit</button>
        </div>
    </div>
</form>
    <footer>
        <div class="contactus">
        </div>
    </footer>
</body>
</html>