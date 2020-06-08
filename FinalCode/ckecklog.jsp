<%@ page import="java.sql.*"%>
<%
String action=request.getParameter("action");
if(action.equals("signin")){
    String username = request.getParameter("username");
    String pwd = request.getParameter("password");
    try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from patient where username_pat='"+username +"' and password_pat='"+pwd+"'");
       if(rs.next()){
           response.sendRedirect("userindex.jsp");
       }
       else {
       out.println("alert('Username and Password do not match');");
       out.println("location='index.jsp';");
       
       }
    }
    
    catch(Exception e){
        out.println(e);
    }
}
    else if(action.equals("signup")){
            response.sendRedirect("register.jsp");
    }



%>
