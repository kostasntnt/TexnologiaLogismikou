
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
       
 <%
String date=request.getParameter("birthday");
String hour=request.getParameter("hours");
out.println(date);
out.println(hour);
try
{
java.sql.Driver d=new com.mysql.jdbc.Driver();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root", "");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into calendar(date,wra)values('"+date+"','"+hour+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
        
        
    </body>
</html>
