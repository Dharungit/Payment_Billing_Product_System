<%@ page import = "java.sql.*" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Querys</title>

</head>
<body>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .back{
            background-color:#233141;
            padding: 15px;
            display: flex;
            justify-content: center;
        }
        .back-btn{
            position: absolute;
            padding: 10px;
            left: 20px;
            background-color: #fff;
            outline: none;
            border: none;
            border-radius: 10px;
        }
        .back h1{
            color: #fff;
        }
        .display-uname{
            margin: 10px 85% 10px 1% ;
            background-color: #233141;
            padding: 10px;
            border-radius: 10px;
        }
        .display-uname p{
            color: #fff;
        }
        .cont{
            border-left-color: rgb(238, 45, 20);
            border-left-style: solid;
            border-left-width: 10px;
            background-color: #233141;
            padding: 30px;
            margin: 10px 20% 10px 1%;
            border-radius: 10px;
        }
        .cont p{
            color:#fff;
            font-size:large;

        }
    </style>
    <form action="student.jsp">
    <div class="back">
        <input class="back-btn" TYPE="submit" VALUE="Back">
        <h1>Your Querys</h1>
    </div>
    </form>
    <%
    try{
        String ses_uname = (String)session.getAttribute("username");
        Class.forName("com.mysql.cj.jdbc.Driver");  
        Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/pbps","root",""); 
        PreparedStatement ps = conn.prepareStatement("select * from contact where username=? order by msg_timing desc");
        ps.setString(1,ses_uname);
        ResultSet rs = ps.executeQuery(); 
        while(rs.next()){
    %>
    <div class="display-uname">
        <p><%=rs.getString("name")%> | <%=rs.getString("username")%> | <%=rs.getString("msg_timing")%></p>
    </div>
    <div class="cont" id="msg-cont <%=rs.getString("id")%>">
        <p ><%=rs.getString("msg")%></p>
        <input type="hidden" id="<%=rs.getString("id")%>" value="<%=rs.getString("rectify")%>"></input>
    </div>
    <script>
            if(document.getElementById("<%=rs.getString("id")%>").value == 1){
                document.getElementById("msg-cont <%=rs.getString("id")%>").style.borderLeftColor = "rgb(24, 231, 24)";
            }
    </script>
    <%}}
                catch(Exception e){
                out.println(e);
                }
                %>
</body>
</html>