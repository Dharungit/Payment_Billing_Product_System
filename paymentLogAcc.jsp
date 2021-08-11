<%@ page import = "java.sql.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    
    <title>Payment Log</title>
</head>
<body>
  <style>
    *{
            margin: 0;
            padding: 0;
            scroll-behavior: smooth;
            font-family: 'Segoe UI',sans-serif;
            font-style: italic;
        }
        .back{
            background-color:#233141;
            padding: 15px;
            padding-bottom: 10px;
            display: flex;
            justify-content: center;
        }
        .back-btn{
            position: absolute;
            padding: 7px;
            top: 20px;
            left: 20px;
            background-color: #fff;
            outline: none;
            border: none;
            border-radius: 10px;
        }
        .back h1{
            color: #fff;
        }
        .input-group{
          max-width: 300px;
          margin: 20px 0 5px 10px;
        }
        #customers {
          font-family: Arial, Helvetica, sans-serif;
          border-collapse: collapse;
          width: 70%;
          margin-top: 50px;
          position: relative;
          left: 5%;
        }
        
        #customers td, #customers th {
          border: 1px solid #ddd;
          padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
          padding-top: 12px;
          padding-bottom: 12px;
          text-align: left;
          background-color: #233141;
          background-image: linear-gradient(to bottom right, #233141 50% ,black);
          outline: none;
          border: none ;
          color: white;
        }
        .table{
          display: flex;
        }
        .tb-1{
          margin: 50px 0 0 10px;
          
        }
        .tb-1 tfoot{
          outline: none;
          border: none;
        }
        .tb-1 th{
          background-image: linear-gradient(to bottom right, #233141 50%,black);
          color: #fff;
          padding: 30px 70px;
          text-align: center;
          border-top-left-radius: 10px;
          border-top-right-radius: 10px;
        }
        .tb-1 td{
          padding: 30px 70px;
          text-align: center;
          font-size: x-large;
          background-image: linear-gradient(to bottom right, rgb(45, 248, 9) 50%,rgba(45, 248, 9, 0.4));
          color: #233141;
        }
        #botm{
          background-image: linear-gradient(to bottom right, rgb(248, 17, 9) 50% ,rgba(248, 17, 9, 0.4));
          border-bottom-left-radius: 10px;
          border-bottom-right-radius: 10px;
        }
        .radio-btn{
          margin: 5px 10px;
        }
  </style>
  <div class="back">
      <form action="Find Record - A.jsp">
          <input class="back-btn" TYPE="submit" VALUE="Back">
          
      </form>
    <h1>Payment Log</h1>
</div>
  <form action="">
    <div class="input-group">
        <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search"
          aria-describedby="search-addon" name="find_pmtD"/>
        <button type="submit" class="btn btn-outline-primary">search</button>
        
      </div>
      <input type="date" class="radio-btn" name="date-src">
      <div class="radio-btn">
          <input type="radio" name="option" value="date" >
          <label>Date</label>
          <input type="radio" name="option" value="uname" selected>
          <label>Username</label>
        </div>  
      </form>   
      <%
      try{
          String driverName = "com.mysql.jdbc.Driver"; 
          String url = "jdbc:mysql://localhost:3306/pbps"; 
          String user = "root"; 
          String dbpsw = ""; 
          PreparedStatement ps = null;
          String username1 = request.getParameter("find_pmtD");
          String option = request.getParameter("option");
          Class.forName(driverName); 
          Connection con = DriverManager.getConnection(url, user, dbpsw);
          if(!(option.equals(null))){
           ps = con.prepareStatement("select * from student_info where username='"+username1+"'");
          }
          if(option.equals("uname")){
              ResultSet rs = ps.executeQuery();
          while(rs.next()){
      
      %>
      <div class="table">
        <div class="tb-1">
          <table>
            <thead>
              <tr>
                <th><%=rs.getString("Name")%><br> Total Payments</th>
              </tr>
            </thead>
            <tfoot>
              <tr>
                <td><b><%=rs.getString("paid")%></b></td>
              </tr>
              <tr>
                <td id="botm"><b style="color: #fff;">Balance</b><br><b><%=rs.getString("balance")%></b></td>
              </tr>
            </tfoot>
          </table>
        </div>
        <%}}}catch(Exception e){
    out.println(e);}%>
     
          <table id="customers">
         
            <tr>
              <th style="border-top-left-radius: 10px;">Name</th>
              <th>User Name</th>
              <th>Course</th>
              <th>Date / Time</th>
              <th>Amount</th>
              <th style="border-top-right-radius: 10px;">Payment ID</th>
            </tr>
               <%
            try{
          String driverName = "com.mysql.jdbc.Driver"; 
          String url = "jdbc:mysql://localhost:3306/pbps"; 
          String user = "root"; 
          String dbpsw = ""; 
          PreparedStatement ps1 = null;
          String username = request.getParameter("find_pmtD");
          String option = request.getParameter("option");
          String date = request.getParameter("date-src");
          Class.forName(driverName); 
          Connection con = DriverManager.getConnection(url, user, dbpsw);
          if(option.equals("uname")){
           ps1 = con.prepareStatement("select * from payment_details where username='"+username+"'");
          }
          else{
           ps1 = con.prepareStatement("select * from payment_details where date(DateTime)='"+date+"'");
          }
          ResultSet rs1 = ps1.executeQuery();
           while(rs1.next()){
      
      %>
            <tr>
            
              <td><%=rs1.getString("Name")%></td>
              <td><%=rs1.getString("username")%></td>
              <td><%=rs1.getString("Course")%></td>
              <td><%=rs1.getString("DateTime")%></td>
              <td><%=rs1.getString("Amount")%></td>
              <td><%=rs1.getString("id")%></td>
             
            </tr>
            <%}}
            catch(Exception e){
    out.println(e);

}

%>
          </table>
       
      </div>
</body>
</html>