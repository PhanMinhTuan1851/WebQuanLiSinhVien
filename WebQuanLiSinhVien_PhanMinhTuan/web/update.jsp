
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




<script>
    function onlyNumberKey(evt) {
        var ASCIICode = (evt.which) ? evt.which : evt.keyCode;
        if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
            return false;
        return true;
    }
</script>

<script>
function lettersOnly(evt) {
       evt = (evt) ? evt : event;
       var charCode = (evt.charCode) ? evt.charCode : ((evt.keyCode) ? evt.keyCode :
          ((evt.which) ? evt.which : 0));
       if (charCode > 32 && (charCode < 65 || charCode > 90) &&
          (charCode < 97 || charCode > 122)) {
          alert("Chỉ được nhập kí tự thường, hoa và dấu cách");
          return false;
       }
       return true;
     }
</script>

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
                        <input type="text" class="form-control" placeholder="TenHocSinh" value="<%=rs.getString("sname") %>" name="sname" id="sname" required onkeypress="return lettersOnly(event)" >
                    </div>
                        
                    <div alight="left" >
                        <label class="form-label">Khoa Hoc</label>
                        <input type="text" class="form-control" placeholder="KhoaHoc" value="<%=rs.getString("khoahoc") %>" name="khoahoc" id="khoahoc" required  >
                    </div>
                    
                    <div alight="left" >
                        <label class="form-label">Hoc Phi</label>
                        <input type="text" class="form-control" placeholder="HocPhi" value="<%=rs.getString("hocphi") %>" name="hocphi" id="hocphi" required onkeypress="return onlyNumberKey(event)" >
                    </div>  
                   
                   
                   
                   <% } %>
                   
                        </br>                   
                    <div alight="right" >
                        <input type="submit" id="submit" value="Xác nhận thay đổi" name="submit" class="btn btn-info">
                        <input type="reset" id="reset" value="Xóa ghi chú" name="reset" class="btn btn-warning">
                    </div>
                        <div align="left">
                            <button type="button" class="btn btn-light"><a href="backup.jsp">Quay lại trang quản lí</a></button>
                        </div>
                        
                        
                        
                    
                </form>                
            </div>
        
    </body>
</html>
