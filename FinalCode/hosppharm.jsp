<%@ page import="java.util.*, com.package1.Hospital, com.package1.HospitalDAO, com.package1.Pharmacy, com.package1.PharmacyDAO  "  %>

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


.dropbtn {
  background-color: Gray;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}


</style>
<body>

<body>
<br>
<br>
<h2 style="text-align:center;">Hospitals-Pharmacies</h2> 
<br>
<br>
<br>



<table style="width:100%">

<td>
List of Hospitals

<br>
<br>


<table>
    
  <td>
      <form name="form">
    
    <select id="hos1" name="hos15" multiple>
    
    
    <%
        HospitalDAO dao=new HospitalDAO();
         List<Hospital> hospital1 ;
         hospital1=dao.list();
   // List <Medicine> medicine1=(ArrayList<Medicine>) request.getAttribute("listMedicine");
    if(hospital1 != null){
    Iterator hos= hospital1.iterator();
    while(hos.hasNext()){
        Hospital hos1= (Hospital) hos.next();
       
   
    
    %>
    
    
   


  <option name="hos1"><%=hos1.getname_hos()%></option>





    
    
  
    <% 
        }}
    %>
    <br> <br>
 
    
</select>
    <br>
    <br>  
   
  
<input type="submit" value="More Information" onclick="javascript: form.action='hosppharm.jsp';">
  <input type="submit" value="Continue to Map" onclick="javascript: form.action='mapget.jsp';"> 
  
    </form>
   <%
     String getname =request.getParameter("hos15");
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM hospital WHERE name_hos='"+getname +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println("Address :");
          out.println(rs.getString("address_hos"));
          out.println("<br>");
                    out.println("Phone Number :");
          out.println(rs.getString("phone_hos"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
     

    
    
    </td>
    
</table>

</td>
<td>
List of Pharmacies

<br>
<br>


<table>
    
  <td>
      <form name="form1">
    
    <select id="pha1" name="pha15" multiple>
    
    
    <%
        PharmacyDAO dao1=new PharmacyDAO();
         List<Pharmacy> pharmacy1 ;
         pharmacy1=dao1.list();
   // List <Medicine> medicine1=(ArrayList<Medicine>) request.getAttribute("listMedicine");
    if(pharmacy1 != null){
    Iterator pha= pharmacy1.iterator();
    while(pha.hasNext()){
        Pharmacy pha1= (Pharmacy) pha.next();
       
   
    
    %>
    
    
   


  <option ><%=pha1.getname_pha()%></option>





    
    
  
    <% 
        }}
    %>
    
</select>
    <br>
    <br>  
   

<input type="submit" value="More Information" onclick="javascript: form1.action='hosppharm.jsp';">
  <input type="submit" value="Continue to Map" onclick="javascript: form1.action='mapget2.jsp';"> 
  
  

    </form>
    
  <%
     String name_pha =request.getParameter("pha15");
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM pharmacy WHERE name_pha='"+name_pha +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println("Address :");
          out.println(rs.getString("address_pha"));
          out.println("<br>");
          out.println("Phone Number :");
          out.println(rs.getString("phone_pha"));
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>

    
    
    </td>
    
</table>

</td>
<td>

<br>
<br>
<br>
<br>

<br>
<br>


	<br>
	

	


</td>


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