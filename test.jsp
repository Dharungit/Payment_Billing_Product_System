<div class="panel-body">
     
                   <% 
               
                        
                        Connection conn=null;
                        Statement stat=null;
                        ResultSet res=null;
                        PreparedStatement ps=null;  
                        Class.forName("com.mysql.cj.jdbc.Driver");  
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
                    %>
                       
                   
        <form  method="post" action="updatebook-process.jsp">
            <%
            try{
            stat=conn.createStatement();
            String u=request.getParameter("u");
            int num=Integer.parseInt(u);
            String data="select * from manage_book where id='"+num+"'";
            res=stat.executeQuery(data);
            while(res.next()){
                %>
            
            <input type="hidden" name="id" value="<%=res.getString("sno") %>"/>

          
            <label>Book Name</label>
            <input class="form-control" type="text" name="bookname" value="<%=res.getString("bookname")%>" autocomplete="off" required />
            </div>
            
            <div class="form-group">
                <label> Category</label>
                <% 
                
                                                        try{ 
                                                            Class.forName("com.mysql.cj.jdbc.Driver");  
                                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
                                                            Statement st=con.createStatement();
                                                          
                                                         
                                                            ResultSet rs = st.executeQuery("select * from category");
                                                    
                                                           
                                                         %>
                <select class="form-control" name="category"  value="<%=res.getString("category")%>" </select>autocomplete="off" required>
                <option value="0"> Select Category</option>
                <% 
                
                                                            while(rs.next()){ 
                                                         %>
                <option value="<%=rs.getString("categoryname")%>"><%=rs.getString("categoryname")%></option>
                <%
                }}catch(Exception e){
                    
                } %>
                
                </select>
                </div>
                
                
                
                
                <div class="form-group">
                
                <label> Author</label>
                <% 
                
                                                        try{ 
                                                            Class.forName("com.mysql.cj.jdbc.Driver");  
                                                            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root",""); 
                                                            Statement st=con1.createStatement();
                                                          
                                                         
                                                            ResultSet rs = st.executeQuery("select * from author");
                                                    
                                                           
                                                         %>
                <select class="form-control" name="author" value="<%=res.getString("author")%>" </select>  autocomplete="off" required>
                <option value="0"> Select Author</option>
                <% 
                
                while(rs.next()){ 
                %>
                <option value="<%=rs.getString("author")%>"><%=rs.getString("author")%></option>
                <%
                }}catch(Exception e){
                    
                } %>
                
                
                </select>
                </div>
            
            <div class="form-group">
            <label>ISBN Number</label>
            <input class="form-control" type="text" name="isbn"  value="<%=res.getString("isbn")%>"  required />
            <p class="help-block">An ISBN is an International Standard Book Number.ISBN Must be unique</p>
            </div>
            
                <%
            }}catch(Exception e){ 
                System.out.println(e.getMessage()); 
            } %>
            <select class=" btn-info" name="option">
                <option class=" btn-info" value="1">Update</option>
                <option class=" btn-info" value="0">Delete</option>
            </select>
        <button type="submit" class="btn btn-info">submit </button>