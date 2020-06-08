<%-- 
    Document   : index
    Created on : 26 Μαϊ 2020, 2:44:13 μμ
    Author     : Κωστας
--%>

<%@ page import="java.util.*, com.package1.Medicine, com.package1.MedicineDAO  "  %>
<%@page import="java.sql.*" %>
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
    
    
   


  <option >Name:<%=med1.getname_med() + "   Active Substance:  "+ med1.getactivesub_med()+"   Milligrams:  " +med1.getmilligram_med()%></option>




    
    
  
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




 <form method="post" action="pharmproduct.jsp">
            Search <input type="text" name="search1" placeholder="enter name..."/>
            <input type="submit" value="Search" name="submit" />
           
            
        </form>



 <br>
 <br>
 <br>
 <br>
 <br>
  <form method="post" action="pharmproduct.jsp">
            Search <input type="text" name="search2" placeholder="enter active substance..."/>
            <input type="submit" value="Search" name="submit" />
           
            
        </form>
 
  <br>
<br>
<br>  
<br>
<br>
<br>

  

   




</td>


<td><u>Search name results</u> <br> <br>
    
    
                     <%
     String getname_med =request.getParameter("search1");
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
        PreparedStatement stmt =con.prepareStatement("SELECT * FROM `medicine` WHERE (name_med like ?)");
        stmt.setString(1, getname_med+"%" );
        ResultSet Rs=stmt.executeQuery();
          while(Rs.next()){
          out.println("Name: " + Rs.getString(1));
          out.println("<br>");
          }
          
          }
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
    
</td>



<td><u>Search active substance results</u> <br> <br>
    
    
                     <%
     String getname_med2 =request.getParameter("search2");
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
        PreparedStatement stmt =con.prepareStatement("SELECT * FROM `medicine` WHERE (activesub_med like ?)");
        stmt.setString(1, getname_med2+"%" );
        ResultSet Rs=stmt.executeQuery();
          while(Rs.next()){
          out.println("Name: " +Rs.getString(1)+ " Active Substance:  " + Rs.getString(2));
          out.println("<br>");
          }
          
          }
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
    
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
    <th><a href = "index.jsp">Log out</a> </th>
   
  </tr>
</table>


</body>
</html>