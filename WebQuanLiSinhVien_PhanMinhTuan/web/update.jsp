
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    if(request.getParameter("submit")!= null)
    {
        String id = request.getParameter("id");
        String name = request.getParameter("sname");
        String khoahoc = request.getParameter("khoahoc");
        String hocphi = request.getParameter("hocphi");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/schooll", "root","Satthu14t");
        pst = con.prepareStatement("update quanlisinhvien set sname = ?, khoahoc = ?, hocphi =? where id =?");
        pst.setString(1, name);
        pst.setString(2, khoahoc);
        pst.setString(3, hocphi);
        pst.setString(4, id);
        pst.executeUpdate();
        
        %>    
        
        <script>
            
            
            alert("Data thay doi thanh cong");
            
            
        </script>
            
            
        
        
        
        <%
    }






%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
               
    </head>
    <body>
        <h1>Cap nhap thong tin hoc sinh</h1>
        <div class="row"
        <div class="col-sm-4">
                <form method="POST" action="#">
                    <% 
                        Connection con;
                            PreparedStatement pst;
                            ResultSet rs;

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/schooll", "root", "Satthu14t");
                            
                            String id = request.getParameter("id");
                            pst = con.prepareStatement("select * from quanlisinhvien where id = ?");
                            pst.setString(1, id);
                            rs = pst.executeQuery();
                            

                            while (rs.next())
                            {
                                
                            
                   %>
        
                    
                    <div alight="left" >
                        <label class="form-label">Ten Hoc Sinh</label>
                        <input type="text" class="form-control" placeholder="TenHocSinh" value="<%=rs.getString("sname") %>" name="sname" id="sname" required >
                    </div>
                        
                    <div alight="left" >
                        <label class="form-label">Khoa Hoc</label>
                        <input type="text" class="form-control" placeholder="KhoaHoc" value="<%=rs.getString("khoahoc") %>" name="khoahoc" id="khoahoc" required >
                    </div>
                    
                    <div alight="left" >
                        <label class="form-label">Hoc Phi</label>
                        <input type="text" class="form-control" placeholder="HocPhi" value="<%=rs.getString("hocphi") %>" name="hocphi" id="hocphi" required >
                    </div>  
                   
                   
                   
                   <% } %>
                   
                        </br>                   
                    <div alight="right" >
                        <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                        <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                    </div>
                        <div align="right">
                            <p><a href="index.jsp">Quay lai</a></p>
                        </div>
                        
                        
                        
                    
                </form>                
            </div>
        
    </body>
</html>
