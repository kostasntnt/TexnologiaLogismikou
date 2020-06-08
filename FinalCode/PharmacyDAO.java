package com.package1;

import com.package1.Pharmacy;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import java.util.Properties;


public class PharmacyDAO{
    String databaseURL = "jdbc:mysql://localhost:3306/texnologialog";
    String user = "root";
    String password = "";
	
 
	
  public List<Pharmacy> list()throws SQLException {
        List<Pharmacy> listPharmacy = new ArrayList<>();
         
        
        try  {
             java.sql.Driver d=new com.mysql.jdbc.Driver();
            Connection connection = DriverManager.getConnection(databaseURL, user, password);
        
           
             String sql = "SELECT * FROM pharmacy";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                String name_pha = result.getString("name_pha");
				String address_pha = result.getString("address_pha");
				int phone_pha = result.getInt("phone_pha");
				float lat_pha= result.getFloat("lat_pha");
                                float lng_pha= result.getFloat("lng_pha");
                                int id_pha=result.getInt("id_pha");
				
                Pharmacy pharmacy = new Pharmacy(name_pha, address_pha, phone_pha, lat_pha,lng_pha,id_pha);
                     
                listPharmacy.add(pharmacy);
            }           
             
        } 
        
        catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
      //   catch(ClassNotFoundException e){
       //  e.printStackTrace();
        
        // }
        finally {return listPharmacy;}
      
    }
 
   public static void main(String[] args)
          
  {
      PharmacyDAO med = new PharmacyDAO();
      
      try
      {
       List<Pharmacy> array = med.list();
      
      
      for(Pharmacy m:array)
      {
      
          System.out.println(m.getname_pha());
          
      }
      }
      catch (SQLException e) {
            e.printStackTrace();
           
        }
  }

  
}
  
  
  