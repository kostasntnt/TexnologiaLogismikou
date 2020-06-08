package com.package1;

import com.package1.Patient;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import java.util.Properties;


public class PatientDAO{
    String databaseURL = "jdbc:mysql://localhost:3306/texnologialog";
    String user = "root";
    String password = "";
	
 
	
  public List<Patient> list()throws SQLException {
        List<Patient> listPatient = new ArrayList<>();
         
        
        try  {
             java.sql.Driver d=new com.mysql.jdbc.Driver();
            Connection connection = DriverManager.getConnection(databaseURL, user, password);
        
           
             String sql = "SELECT * FROM patient";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                String username_pat = result.getString("username_pat");
				String password_pat = result.getString("password_pat");
                                String email_pat = result.getString("email_pat");
                                String firstname_pat = result.getString("firstname_pat");
                                String lastname_pat = result.getString("lastname_pat");
                                String address_pat = result.getString("address_pat");
                                String description_pat = result.getString("description_pat");                               
				int phone_pat = result.getInt("phone_pat");
                                int registnub_pat = result.getInt("registnub_pat");
                                String record_pat = result.getString("record_pat");
			
				
                Patient patient = new Patient(username_pat, password_pat, email_pat, firstname_pat,lastname_pat,address_pat,description_pat,phone_pat,registnub_pat,record_pat);
                     
                listPatient.add(patient);
                
            }           
             
        } 
        
        catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
      //   catch(ClassNotFoundException e){
       //  e.printStackTrace();
        
        // }
        finally {return listPatient;}
      
    }
 
   public static void main(String[] args)
          
  {
      PatientDAO pat = new PatientDAO();
      
      try
      {
       List<Patient> array = pat.list();
      
      
      for(Patient m:array)
      {
      
          System.out.println(m.getusername_pat());
          
      }
      }
      catch (SQLException e) {
            e.printStackTrace();
           
        }
      
      
      
      
  }

  
}
  
  
  
