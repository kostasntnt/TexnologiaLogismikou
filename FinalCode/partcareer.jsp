<%@ page import="java.util.*, package1.Savenotes, package1.SavenotesDAO  "  %>
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><style>
body {
  background-image: url('luis-melendez-Pd4lRfKo16U-unsplash.jpg');
    background-repeat: no-repeat;
  background-attachment: fixed;
   background-size: 100% 100%;
}


</style>
  
    <body>
        <h2 style="text-align:center;"> Patient's procedure folder</h2>
        
        <table width="100%">
            <br><br>
            <th> 
                <u>Previous entries</u> 
                <br><br><br><br>
                <select id="sav1" name="sav1" multiple>
    <%
        SavenotesDAO dao9=new SavenotesDAO();
         List<Savenotes> savenotes1 ;
         savenotes1=dao9.list();
    if(savenotes1 != null){
    Iterator sav= savenotes1.iterator();
    
    while(sav.hasNext()){
        Savenotes sav1= (Savenotes) sav.next();
       

%>
 <option name="sav1" id="sav" ><%="Puretos :"+sav1.getpuretos()+" Zaxaro :"+sav1.getzaxaro()+" Piesh : "+sav1.getpiesh()%></option>
 
  


    
  
    <% 
        }}
    %>
  


   
    %>
                 
            </th>
            
            
            <th>
                <form name="save2"   action="partcareer.jsp">
          <div id="div_puretos">
        <div id="puretos"></div>
        <div>
            Puretos:<input type="text"  id="puretos" name="puretos" class="form-control" placeholder="insert fever levels..." />
			<br>
        </div>
        <br><br><br>
           <div id="div_zaxaro">
        <div id="zaxaro"></div>
        <div>
            Zaxaro:<input type="text"  id="zaxaro" name="zaxaro" class="form-control" placeholder="insert sugar levels..." />
			<br>
        </div>
        <br><br><br>
           <div id="div_piesh">
        <div id="piesh"></div>
        <div>
            Piesh:<input type="text"  id="piesh" name="piesh" class="form-control" placeholder="insert blood pressure levels..." />
			<br>
        </div> <br><br>
                <input type="submit" value="Save Notes">
                
                     <%
String puretos1=request.getParameter("puretos");
String zaxaro1=request.getParameter("zaxaro");
String piesh1=request.getParameter("piesh");
//out.println(puretos1);
//out.println(zaxaro1);
//out.println(piesh1);
try
{
java.sql.Driver d=new com.mysql.jdbc.Driver();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root", "");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into savenotes(puretos,zaxaro,piesh)values('"+puretos1+"','"+zaxaro1+"','"+piesh1+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
                    
                    
                    
                </form>
            </th>
            
          
        </table>

  <br><br><br>
            <a href = "index.jsp">Log out</a>
    
    </body>
</html>
