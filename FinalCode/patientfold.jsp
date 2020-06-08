<%@ page import="java.util.*, com.package1.Patient, com.package1.PatientDAO  "  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<br>
<br>
<br>

<h2 style="text-align:center;">Patients Folder</h2> <br>
<table style="width:100%">
  <tr>
    <td>List of Patients
    
        <br>
<br>


<table>
    
  <td>
      <form name="pat1" action="moreinfopage.jsp" method="post" >
    
    <select id="pat1" name="pat1" multiple>
    
    
    <%
        PatientDAO dao=new PatientDAO();
         List<Patient> patient1 ;
         patient1=dao.list();
    if(patient1 != null){
    Iterator pat= patient1.iterator();
    
    while(pat.hasNext()){
        Patient pat1= (Patient) pat.next();
       
   session.setAttribute("address",pat1.getemail_pat());
   




   
    %>
    
    
   


    <option name="pat1" id="pat" ><%=pat1.getlastname_pat()%></option>
 
  


    
  
    <% 
        }}
    %>
    
</select>
    
    
      
    <br>
    <br>  
     <input type="submit" value="More Information">
      </form>
    
    </td>
    
</table>
        
        
    </td>
    

    <td>
        <form method="post" action="patientfold.jsp">
            Search <input type="text" name="search" placeholder="enter first name..."/>
            <input type="submit" value="Search" name="submit" />
           
            
        </form>
    </td>
<br>
<br>
<br>
<br>
<br>
<td> <u>Search Results</u> <br><br>
                 <%
     String getfirstname_pat =request.getParameter("search");
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
        PreparedStatement stmt =con.prepareStatement("SELECT * FROM `patient` WHERE (firstname_pat like '?') or (lastname_pat like ?)");
        stmt.setString(1, getfirstname_pat+"%" );
        ResultSet Rs=stmt.executeQuery();
          while(Rs.next()){
          out.println(Rs.getString(4)+ " " + Rs.getString(5));
          out.println("<br>");
          }
          
          }
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>

</td>


	
  </tr>


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
    <th><a href = "index.jsp">Log out</a> </th>
   
  </tr>
</table>


</body>
</html>