package com.package1;

import com.package1.Hospital;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import java.util.Properties;


public class HospitalDAO{
    String databaseURL = "jdbc:mysql://localhost:3306/texnologialog";
    String user = "root";
    String password = "";
	
 
	
  public List<Hospital> list()throws SQLException {
        List<Hospital> listHospital = new ArrayList<>();
         
        
        try  {
             java.sql.Driver d=new com.mysql.jdbc.Driver();
            Connection connection = DriverManager.getConnection(databaseURL, user, password);
        
           
             String sql = "SELECT * FROM hospital";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                String name_hos = result.getString("name_hos");
				String address_hos = result.getString("address_hos");
				int phone_hos = result.getInt("phone_hos");
				float lat_hos= result.getFloat("lat_hos");
                                float lng_hos= result.getFloat("lng_hos");
                                int id_hos= result.getInt("id_hos");
				
                Hospital hospital = new Hospital(name_hos, address_hos, phone_hos, lat_hos,lng_hos,id_hos);
                     
                listHospital.add(hospital);
            }           
             
        } 
        
        catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
      //   catch(ClassNotFoundException e){
       //  e.printStackTrace();
        
        // }
        finally {return listHospital;}
      
    }
 
   public static void main(String[] args)
          
  {
      HospitalDAO hos = new HospitalDAO();
      
      try
      {
       List<Hospital> array = hos.list();
      
      
      for(Hospital m:array)
      {
      
          System.out.println(m.getname_hos());
          
      }
      }
      catch (SQLException e) {
            e.printStackTrace();
           
        }
  }

  
}
  
  
  
