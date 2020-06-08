package com.package1;

import com.package1.Disease;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import java.util.Properties;


public class DiseaseDAO{
    String databaseURL = "jdbc:mysql://localhost:3306/texnologialog";
    String user = "root";
    String password = "";
	
 
	
  public List<Disease> list()throws SQLException {
        List<Disease> listDisease = new ArrayList<>();
         
        
        try  {
             java.sql.Driver d=new com.mysql.jdbc.Driver();
            Connection connection = DriverManager.getConnection(databaseURL, user, password);
        
           
             String sql = "SELECT * FROM dis";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                String name_dis = result.getString("name_dis");
				 int nubvict_dis = result.getInt("nubvict_dis");
				int nubdead_dis = result.getInt("nubdead_dis");
				double mortalityrate_dis= result.getDouble("mortalityrate_dis");
                                int id_dis= result.getInt("id_dis");
                                
                Disease disease = new Disease(name_dis, nubvict_dis,nubdead_dis, mortalityrate_dis,id_dis);
                     
                listDisease.add(disease);
            }           
             
        } 
        
        catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
      //   catch(ClassNotFoundException e){
       //  e.printStackTrace();
        
        // }
        finally {return listDisease;}
      
    }
 
   public static void main(String[] args)
          
  {
      DiseaseDAO dis = new DiseaseDAO();
      
      try
      {
       List<Disease> array = dis.list();
      
      
      for(Disease m:array)
      {
      
          System.out.println(m.getname_dis());
          
      }
      }
      catch (SQLException e) {
            e.printStackTrace();
           
        }
  }

  
}
  
  
  