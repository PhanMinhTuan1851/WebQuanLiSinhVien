<%@page import="java.sql.*" %>

<%
        String id = request.getParameter("id");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/schooll", "root","Satthu14t");
        pst = con.prepareStatement("delete from quanlisinhvien where id =?");
        
        pst.setString(1, id);
        pst.executeUpdate();
        
        %>    
        
        <script>
            
            
            alert("Da xoa du lieu");
            
        </script>
        <p><a href="index.jsp">Quay lai</a></p>
            
        