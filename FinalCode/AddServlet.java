package com.package1;
import com.package1.Patient;
import com.package1.PatientDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
 
@WebServlet("/list")
public class AddServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public AddServlet(){
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processRequest(request, response);
		} 
                catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
    
    
    	private void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws IOException, InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException, ServletException {

String driver = "com.mysql.jbc.Driver"; 
 PatientDAO dao = new PatientDAO();
 
  
 
 
         String name =(String) request.getParameter("pat1");
        List<Patient> list = new ArrayList(dao.list());
        Patient patient=null;
//        for(int i=0;i<list.size();i++) {
//           
//            
//            if(list.get(i).getfirstname_pat().equals(name)) {
//                
//                patient=list.get(i);
//                break;   }
//          
//            
//        }
//        
//        System.out.println(patient);
//        if(patient !=null){
//        
 //           request.setAttribute("patient",patient); }
            response.sendRedirect("moreinfopage.jsp");
 //  ServletContext context =getServletContext();
//           RequestDispatcher dispatcher = request.getRequestDispatcher("moreinfopage.jsp");
//            try{ 
//           dispatcher.forward(request, response);
// 
//      
//            }
//          
//            catch(ServletException e){
//            e.printStackTrace();
//            }
//           
//        catch(IOException em){
//             em.printStackTrace();
//}
            }
        }
