

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
<style>
body {
  background-image: url('luis-melendez-Pd4lRfKo16U-unsplash.jpg');
    background-repeat: no-repeat;
  background-attachment: fixed;
   background-size: 100% 100%;
}

button {
    background-color: Transparent;
    background-repeat:no-repeat;
    border: 2px solid #555555;
    cursor:pointer;
    overflow: hidden;
    outline:none;
	font-size: 23px;

}
</style>
    <body>
        <h3 style="text-align:center;"><u>Welcome to your meeting agend</u></h3>
        <br><br><br>
        <table>
    <tr>
    <th>
        <u>   List of preference for reservations</u>
        
        <br><br><br>
                     <%

          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM calendar";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println("The date is : ");
          out.println(rs.getString("date")); 
          out.println(" in");
          out.println(rs.getString("wra"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
    </th>
    
    <th>
      
    </th>
    <th>
        <br><br><br>
        Please check the patient folder for the contact information and validate your meetings with yout patients .
        <br><br>
        
       
      <a href="patientfold.jsp" class="button">Patient's Folder</a>
       
    </th>
        
    </tr>
        </table>
    </body>
</html>
