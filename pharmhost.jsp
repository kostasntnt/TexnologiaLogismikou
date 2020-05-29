<%@ page import="java.util.*, com.package1.Hospital, com.package1.HospitalDAO, com.package1.Pharmacy, com.package1.PharmacyDAO  "  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <form>
    
    <select id="hos1" name="hos1" multiple>
    
    
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
    
    
   


  <option selected value="<%= request.getParameter("hos1.getname_hos()") %>">Name: <%=hos1.getname_hos() + "| Adress: " + hos1.getaddress_hos() +"| Phone: " + hos1.getphone_hos()%></option>





    
    
  
    <% 
        }}
    %>
    
</select>
    <br>
    <br>  
   


  
    
    
    
    
    
    </td>
    
</table>

</td>
<td>
List of Pharmacies

<br>
<br>


<table>
    
  <td>
      <form>
    
    <select id="pha1" name="pha1" multiple>
    
    
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
    
    
   


  <option selected value="<%= request.getParameter("pha1.getname_pha()") %>">Name: <%=pha1.getname_pha() + "| Adress: " + pha1.getaddress_pha() +"| Phone: " + pha1.getphone_pha()%></option>





    
    
  
    <% 
        }}
    %>
    
</select>
    <br>
    <br>  
   


  
    
    
    
    
    
    </td>
    
</table>

</td>
<td>
<button class="button">More Information</button>
<br>
<br>
<br>
<br>
<button class="button" onclick="window.location.href='map.jsp';">Continue to Map</button>
<br>
<br>


	<br>
	

	
<div class="dropdown">
  <button class="dropbtn">Choose a Date</button>
  <div class="dropdown-content">
 <a href="#">Δευτερα</a>
    <a href="#">Τρίτη</a>
    <a href="#">Τετάρτη</a>
     <a href="#">Πέμπτη</a>
      <a href="#">Παρασκευή</a>
       <a href="#">Σάββατο</a>
        <a href="#">Κυριακή</a>
  </div>
</div>


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
    <th><a href = "ArxikhSel.jsp">Log out</a> </th>
   
  </tr>
</table>

</body>
</html>