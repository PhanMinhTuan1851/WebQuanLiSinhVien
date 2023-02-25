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
        pst = con.prepareStatement("insert into quanlisinhvien(id,sname,khoahoc,hocphi)values(?,?,?,?)");
        pst.setString(1, id);
        pst.setString(2, name);
        pst.setString(3, khoahoc);
        pst.setString(4, hocphi);
        pst.executeUpdate();
        
        %>    
        
        <script>
            
            
            alert("Da them vao du lieu");
            
            
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
        <h1>Phan Mem Quan Li Sinh Vien</h1>
        </br>
        <div class="row">
            <div class="col-sm-4">
                <form method="POST" action="#">
                    
                    <div alight="left" >
                        <label class="form-label">ID</label>
                        <input type="text" class="form-control" placeholder="ID" name="id" id="id" required >
                    </div>
                    
                    <div alight="left" >
                        <label class="form-label">Ten Hoc Sinh</label>
                        <input type="text" class="form-control" placeholder="TenHocSinh" name="sname" id="sname" required >
                    </div>
                        
                    <div alight="left" >
                        <label class="form-label">Khoa Hoc</label>
                        <input type="text" class="form-control" placeholder="KhoaHoc" name="khoahoc" id="khoahoc" required >
                    </div>
                    
                    <div alight="left" >
                        <label class="form-label">Hoc Phi</label>
                        <input type="text" class="form-control" placeholder="HocPhi" name="hocphi" id="hocphi" required >
                    </div>  
                        </br>                   
                    <div alight="right" >
                        <input type="submit" id="submit" value="submit" name="submit" class="btn btn-info">
                        <input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
                    </div> 
                    
                </form>                
            </div>
            
            <div class="col-sm-8">
                
                <div class="panel-body">
                    <table id ="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width ="100%">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Ten Hoc Sinh</th>
                                <th>Khoa Hoc</th>
                                <th>Hoc Phi</th>
                                <th>Chinh sua</th>
                                <th>Xoa</th>
                            </tr>
                            
                            
                            
                            <%                                
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;

                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost/schooll", "root", "Satthu14t");
                                
                                String query = "select * from quanlisinhvien";
                                Statement st = con.createStatement();
                                rs = st.executeQuery(query);
                                
                                while (rs.next())
                                {
                                    String id = rs.getString("id");
                                

                            %>
                            
                            <tr>
                                <td><%=rs.getString("id") %></td>
                                <td><%=rs.getString("sname") %></td>
                                <td><%=rs.getString("khoahoc") %></td>
                                <td><%=rs.getString("hocphi") %></td>
                                <td><a href="update.jsp?id=<%=id%>"> Chinh sua</a></td>
                                <td><a href="delete.jsp?id=<%=id%>"> Xoa </a> </td>
                            </tr>
                        
                            <% 
                            
                                }
                            %>
                    </table>
                    
                    
                    
                    
                </div>
                
                
                
            </div>
            
            
        </div>
        
        
    </body>
</html>
