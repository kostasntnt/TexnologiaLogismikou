<%@ page import="java.util.*, com.package1.Disease, com.package1.DiseaseDAO  "  %>

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
	font-size: 20px;

}
</style>
<body>
<body>
<br>
<br>
<h2 style="text-align:center;">Diseases</h2> 
<br>
<br>
<br>
<br>
<br>


<table style="width:100%">

<td>
List of Diseases

<br>
<br>


<table>
    
  <td>
   <form name="dis1" action="disease.jsp" method="post">
    
    <select id="dis1" name="dis1" multiple>
    
    
    <%
        DiseaseDAO dao=new DiseaseDAO();
         List<Disease> disease1 ;
         disease1=dao.list();
   
    if(disease1 != null){
    Iterator dis= disease1.iterator();
    while(dis.hasNext()){
        Disease dis1= (Disease) dis.next();
       
   
    
    %>
    
    
   


  <option ><%=dis1.getname_dis()%></option>




    
    
  
    <% 
        }}
    %>
    
</select>
    <br>
    <br>  
<input type="submit" value="More Information">
      </form>
 
  <%
     String getdis =request.getParameter("dis1");
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM dis WHERE name_dis='"+getdis +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println("Number of victims :");
          out.println(rs.getString("nubvict_dis"));
          out.println("<br>");
                    out.println("Number of deaths :");
          out.println(rs.getString("nubdead_dis"));
          out.println("<br>");
                    out.println("Mortality Rate :");
          out.println(rs.getString("mortalityrate_dis"));
          out.println("<br>");
          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %> 
 
    
    </td>
    
</table>

 <td>
        <form method="post" action="disease.jsp">
            Search <input type="text" name="search100" placeholder="enter name..."/>
            <input type="submit" value="Search" name="submit" />
           
            
        </form>
     <u>Results of name search</u><br><br>
         <%
     String getname_dis =request.getParameter("search100");
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
        PreparedStatement stmt =con.prepareStatement("SELECT * FROM `dis` WHERE (name_dis like ?)");
        stmt.setString(1, getname_dis+"%" );
        ResultSet Rs=stmt.executeQuery();
          while(Rs.next()){
          out.println(Rs.getString(1));
          out.println("<br>");
          }
          
          }
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
 <td>
     
     
 </td>
    
    </td>
 <td>
        <form method="post" action="disease.jsp">
            Search <input type="text" name="search101" placeholder="enter symptom..."/>
            <input type="submit" value="Search" name="submit" />
           
            
        </form>
     <u>Results of symptom search</u> <br><br>
         <%
     String getname_dis2 =request.getParameter("search101");
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
        PreparedStatement stmt =con.prepareStatement("SELECT name_dis FROM dis INNER JOIN symptom ON dis.id_sym=symptom.id_sym WHERE (name_sym like ?);");
        stmt.setString(1, getname_dis2+"%" );
        ResultSet Rs=stmt.executeQuery();
          while(Rs.next()){
          out.println(Rs.getString(1));
          out.println("<br>");
          }
          
          }
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
    </td>
</td>
<td>
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
    <th><a href = "index.jsp">Log out</a> </th>
   
  </tr>
</table>


</body>
</html>