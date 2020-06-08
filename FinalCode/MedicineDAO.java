package com.package1;

import com.package1.Medicine;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import java.util.Properties;


public class MedicineDAO{
    String databaseURL = "jdbc:mysql://localhost:3306/texnologialog";
    String user = "root";
    String password = "";
	
 
	
  public List<Medicine> list()throws SQLException {
        List<Medicine> listMedicine = new ArrayList<>();
         
        
        try  {
             java.sql.Driver d=new com.mysql.jdbc.Driver();
            Connection connection = DriverManager.getConnection(databaseURL, user, password);
        
           
             String sql = "SELECT * FROM medicine";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                String name_med = result.getString("name_med");
				String activesub_med = result.getString("activesub_med");
				int milligram_med = result.getInt("milligram_med");
				int id_med = result.getInt("id_med");
				
                Medicine medicine = new Medicine(name_med, activesub_med, milligram_med, id_med);
                     
                listMedicine.add(medicine);
            }           
             
        } 
        
        catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
      //   catch(ClassNotFoundException e){
       //  e.printStackTrace();
        
        // }
        finally {return listMedicine;}
      
    }
 
   public static void main(String[] args)
          
  {
      MedicineDAO med = new MedicineDAO();
      
      try
      {
       List<Medicine> array = med.list();
      
      
      for(Medicine m:array)
      {
      
          System.out.println(m.getname_med());
          
      }
      }
      catch (SQLException e) {
            e.printStackTrace();
           
        }
  }

  
}
  
  
  
