<%-- 
    Document   : index
    Created on : 26 Μαϊ 2020, 2:44:13 μμ
    Author     : Κωστας
--%>

<%@ page import="java.util.*, com.package1.Medicine, com.package1.MedicineDAO  "  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>

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
	font-size: 20px;

}
</style>
<body>


<br>
<br>
<h2 style="text-align:center;">Pharmaceutical Products</h2> 
<br>
<br>
<br>
<br>
<br>


<table style="width:100%">

<td>
List of products





<br>
<br>


<table>
    
  <td>
      <form>
    
    <select id="med1" name="med1" multiple>
    
    
    <%
        MedicineDAO dao=new MedicineDAO();
         List<Medicine> medicine1 ;
         medicine1=dao.list();
   // List <Medicine> medicine1=(ArrayList<Medicine>) request.getAttribute("listMedicine");
    if(medicine1 != null){
    Iterator med= medicine1.iterator();
    while(med.hasNext()){
        Medicine med1= (Medicine) med.next();
       
   
    
    %>
    
    
   


  <option selected value="<%= request.getParameter("med1.getname_med()") %>"><%=med1.getname_med()%></option>




    <script>
function myFunction() {
  document.getElementById("demo").innerHTML =" <%=med1.getname_med()%>";
}
</script>
    
    
  
    <% 
        }}
    %>
    
</select>
    <br>
    <br>  
    <button onclick="myFunction()">More Informmation</button>

    <p id="demo"></p>


  
    
    
    
    
    
    </td>
    
</table>


</td>

<td>




<div class="topnav">
 <br>
 <br>
  <input type="text" placeholder="Search by name">
   <a class="active" href="#home">Search by name</a>
   
</div>


<div class="topnav">
 <br>
 <br>
 <br>
 <br>
 <br>
  <input type="text" placeholder="Search by active substance">
   <a class="active" href="#home">Search by active substance</a>
  <br>
<br>
<br>  
<br>
<br>
<br>

  

   
</div>



</td>
<td>
    
    
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
    <th><a href = "index_admin.php">Log out</a> </th>
   
  </tr>
</table>


</body>
</html>