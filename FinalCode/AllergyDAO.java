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




public class AllergyDAO {
    
     String databaseURL = "jdbc:mysql://localhost:3306/texnologialog";
    String user = "root";
    String password = "";
	
 
	
  public List<Allergy> list()throws SQLException {
        List<Allergy> listAllergy = new ArrayList<>();
         
        
        try  {
             java.sql.Driver d=new com.mysql.jdbc.Driver();
            Connection connection = DriverManager.getConnection(databaseURL, user, password);
        
           
             String sql = "SELECT * FROM allergy";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                String name_all = result.getString("name_all");
				String desc_all = result.getString("desc_all");
				int id_all = result.getInt("id_all");
				
				
                Allergy allergy = new Allergy(name_all, desc_all, id_all);
                     
                listAllergy.add(allergy);
            }           
             
        } 
        
        catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
      //   catch(ClassNotFoundException e){
       //  e.printStackTrace();
        
        // }
        finally {return listAllergy;}
    
}
}