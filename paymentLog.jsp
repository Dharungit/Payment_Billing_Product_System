<%@ page import = "java.sql.*" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Logs</title>
</head>
<body>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .back{
            background-color: #233141;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
        }
        .back-btn button{
            position: absolute;
            padding: 10px;
            left: 30px;
            top: 10px;
            background-color: #fff;
            outline: none;
            border: none;
            border-radius: 10px;
        }
        .title h1{
            color: #fff;
        }
        .con{
            margin: 30px;
        }
        .row1{
            display: flex;
            
        }
        .name-con{
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 50px;
            background-color: #233141;
            padding: 20px 30px;
            border-radius: 13px;
            min-width: 400px;
        }
        .name-con p{
            color: #fff;
        }
        .amount-con{
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #EF1010;
            padding: 20px 30px;
            border-radius: 13px;
        }
        .amount-con h1{
            color: #fff;
        }
        .row2{
            background-color: #2ED760;
            padding: 14px 20px;
            margin: 10px 80% 0 50px;
            border-radius: 13px;
            
        }
        .continer{
            margin-bottom: 50px;
        }
    </style>
    
    <div class="back">
        <form action="student.jsp">
            <div class="back-btn">
                <button type="submit">Back</button>
            </div>
        </form>
        <div class="title">
            <h1 >Payment Log</h1>
        </div>
    </div>
    <%
    try{
        String username = (String)session.getAttribute("username");
        Class.forName("com.mysql.cj.jdbc.Driver");  
        Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root",""); 
        PreparedStatement ps = conn.prepareStatement("select * from payment_details where username=? order by id desc");
        ps.setString(1,username);
        ResultSet rs = ps.executeQuery(); 
        while(rs.next()){
    %>
    <div class="continer">
    <div class="con">
        <div class="row1">
            <div class="name-con">
                <p><%= rs.getString("Name")%> | <%= rs.getString("username")%> | <%= rs.getString("DateTime")%></p>
            </div>
            <div class="amount-con">
                <h1>Amount: <%= rs.getString("Amount")%></h1>
            </div>
        </div>
        <div class="row2">
            <h3>Payment success!</h3>
        </div>
    </div>
    <% }}
 catch(Exception e){
                out.println(e);
                }
                %>
</div>

    
</body>
</html>