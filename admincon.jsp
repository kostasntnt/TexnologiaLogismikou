

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>

    <body>
    
        
        
                     <%

          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM calendar";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println(rs.getString("date"));
          out.println(rs.getString("wra"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
        
        
        
    </body>
</html>
