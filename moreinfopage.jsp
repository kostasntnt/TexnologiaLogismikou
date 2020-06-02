<%@ page import="java.util.*, com.package1.Patient, com.package1.PatientDAO   "  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<htlm>
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
<br>
<br>
<h2 style="text-align:center;">Information about patient</h2> 
<br>
<br>
<br>
<br>
<br>

<table style="width:100%">
   


       

<td>
Name:                 <%
     String getlastname =request.getParameter("pat1");
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM patient WHERE lastname_pat='"+getlastname +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println(rs.getString("firstname_pat"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>

<br>
<br>
LastName:
                 <%
     String getlastname2 =request.getParameter("pat1");
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM patient WHERE lastname_pat='"+getlastname2 +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println(rs.getString("lastname_pat"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>

<br>
<br>
Address:                <%
     String getlastname3 =request.getParameter("pat1");
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM patient WHERE lastname_pat='"+getlastname3 +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println(rs.getString("address_pat"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
<br>
<br>
E-mail:                <%
     String getlastname4 =request.getParameter("pat1");
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM patient WHERE lastname_pat='"+getlastname4 +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println(rs.getString("email_pat"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
<br>
<br>
Age:                <%
     String getlastname5 =request.getParameter("pat1");
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM patient WHERE lastname_pat='"+getlastname5 +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println(rs.getInt("age_pat"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
<br>
<br>
Gender:                <%
     String getlastname6 =request.getParameter("pat1");
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM patient WHERE lastname_pat='"+getlastname6 +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println(rs.getString("gender"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
      <br>
<br>
Records:     <%
     String getlastname7 =request.getParameter("pat1");
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM patient WHERE lastname_pat='"+getlastname7 +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println(rs.getString("record_pat"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
<br>
<br>
<br>
Inster your notes and save them.
<br>


<textarea id="w3mission" rows="4" cols="50">

</textarea>
<br>
<br>
<button class="button">Save</button>
</td>


<td>
Allergies
<br>
<br>
<br>
<textarea id="w3mission" rows="4" cols="50">

</textarea>
<br>
<br>


Diseases History
<br>
<br>
<br>
<textarea id="w3mission" rows="4" cols="50">

</textarea>
<br>
<br>
<br>


</td>


</table>

<table border='2' style="width:8%">
  <tr>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
    <th><a href = "ArxikhSel.jsp">Log out</a> </th>
   
  </tr>
</table>

	


</body>

</html>