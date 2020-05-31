<%@ page import="java.util.*, com.package1.Patient, com.package1.PatientDAO  "  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <form name="pat1" action="AddServlet" method="post" >
    
    <select id="pat1" name="pat1" multiple>
    
    
    <%
        PatientDAO dao=new PatientDAO();
         List<Patient> patient1 ;
         patient1=dao.list();
   // List <Medicine> medicine1=(ArrayList<Medicine>) request.getAttribute("listMedicine");
    if(patient1 != null){
    Iterator pat= patient1.iterator();
    while(pat.hasNext()){
        Patient pat1= (Patient) pat.next();
       
   
   
    %>
    
    
   


  <option name="pat" id="pat" selected value="<%= request.getParameter("pat1.getfirstname_pat()") %>"><%=pat1.getfirstname_pat()+ " " + pat1.getlastname_pat()%></option>




    
  
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
    <th>
	<div class="topnav">
 <br>
 <br>
  <input type="text" placeholder="Search by name">
   <a class="active" href="#home">Search by name</a>
   
</div>
<br>
<br>
<br>
<br>
<br>


<button class="button" onclick="window.location.href='moreinfopage.jsp';">More Information</button>
	
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
    <th><a href = "ArxikhSel.jsp">Log out</a> </th>
   
  </tr>
</table>


</body>
</html>