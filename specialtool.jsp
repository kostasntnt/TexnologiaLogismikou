<%@ page import="java.sql.*"%>

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
	font-size: 15px;
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

<br>
<br>
<h2 style="text-align:center;">E-MDF Special Tool</h2> 
<br>
<br>
<br>

 <form method="post" action="index.jsp">
        <td> <div id="div1">
        <div id="message"></div>
        <div><u>Please insert the name of a disease you want to get the results</u>
            <input type="text"  id="disname" name="disname" class="form-control" placeholder="Disease name.." />
        </div>
        <br>
     
        <button type="submit" name="action"  value="result" class="btn">Show the results</button>
 </form>
<br><br><br><br>

<textarea id="w3mission" rows="4" cols="50">


  <%
     String medname =request.getParameter("disname");
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
        PreparedStatement stmt =con.prepareStatement("SELECT * FROM medicine INNER JOIN dis ON medicine.id_dis=dis.id_dis WHERE (name_dis like ?);");
        stmt.setString(1, medname+"%" );
        ResultSet Rs=stmt.executeQuery();
          while(Rs.next()){
          out.println(Rs.getString(1)+" "+ Rs.getString(3) + " mg is the best choice for your patient.");
          
       
          }
          
          }
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>

</textarea>
      <br><br><br><br>
      <form method="post" action="index.jsp">
          <div><u>Please inster the name of symptom yout patient suffers from:</u>
            <input type="text" id="symname" name="symname" class="form-control" placeholder="Symptom name.."/>			
        </div>
                  <br>
     
        <button type="submit" name="action1"  value="result1" class="btn">Show the results</button>
     </form>
      <br><br><br><br>
      <textarea id="w3mission2" rows="4" cols="50">

  <%
     String medname1 =request.getParameter("symname");
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
        PreparedStatement stmt =con.prepareStatement("SELECT * FROM medicine INNER JOIN symptom ON medicine.id_sym=symptom.id_sym WHERE (name_sym like ?);");
        stmt.setString(1, medname1+"%" );
        ResultSet Rs=stmt.executeQuery();
          while(Rs.next()){
          out.println(Rs.getString(1)+" "+ Rs.getString(3) + " mg is the best choice for your patient.");
          
       
          }
          
          }
   catch(Exception ex){
   ex.getMessage();
   }      
      
      
      %>
 

</textarea>
      
</body>
</html>