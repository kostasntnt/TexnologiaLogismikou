
package com.package1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import java.util.Properties;


public class SymptomDAO {
    
    
        String databaseURL = "jdbc:mysql://localhost:3306/texnologialog";
    String user = "root";
    String password = "";
	
 
	
  public List<Symptom> list()throws SQLException {
        List<Symptom> listSymptom = new ArrayList<>();
         
        
        try  {
             java.sql.Driver d=new com.mysql.jdbc.Driver();
            Connection connection = DriverManager.getConnection(databaseURL, user, password);
        
           
             String sql = "SELECT * FROM symptom";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                String name_sym = result.getString("name_sym");
				String desc_sym = result.getString("desc_sym");
				int id_sym = result.getInt("id_sym");
				
				
                Symptom symptom = new Symptom(name_sym, desc_sym, id_sym);
                     
                listSymptom.add(symptom);
            }           
             
        } 
        
        catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
      //   catch(ClassNotFoundException e){
       //  e.printStackTrace();
        
        // }
        finally {return listSymptom;}
    
}
    
}
