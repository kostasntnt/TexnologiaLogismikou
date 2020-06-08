package package1;

import package1.Savenotes;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import java.util.Properties;


public class SavenotesDAO{
    String databaseURL = "jdbc:mysql://localhost:3306/texnologialog";
    String user = "root";
    String password = "";
	
 
	
  public List<Savenotes> list()throws SQLException {
        List<Savenotes> listSavenotes = new ArrayList<>();
         
        
        try  {
             java.sql.Driver d=new com.mysql.jdbc.Driver();
            Connection connection = DriverManager.getConnection(databaseURL, user, password);
        
           
             String sql = "SELECT * FROM savenotes";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                  double puretos=result.getDouble("puretos"); 
                  double piesh=result.getDouble("piesh");
                                double zaxaro=result.getDouble("zaxaro");                           
				int id = result.getInt("id");
                               
			
				
                Savenotes savenotes = new Savenotes(puretos,zaxaro,piesh,id);
                     
                listSavenotes.add(savenotes);
                
            }           
             
        } 
        
        catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
      //   catch(ClassNotFoundException e){
       //  e.printStackTrace();
        
        // }
        finally {return listSavenotes;}
      
    }
 

      
  

  
}
  
  
  
