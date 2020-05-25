<htlm>
<style>
body {
  background-image: url('luis-melendez-Pd4lRfKo16U-unsplash.jpg');
    background-repeat: no-repeat;
  background-attachment: fixed;
   background-size: 100% 100%;
}
   
   button {
    background-color: Transparent;
    background-repeat:no-repeat;
    border: 2px solid #555555;
    cursor:pointer;
    overflow: hidden;
    outline:none;
	font-size: 20px;

}
</style>
<body>

<% 

 
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MedicineDAO {
    String databaseURL = "jdbc:mysql://localhost:3306/texnologialog";
    String user = "root";
    String password = "";
	
	
  public List<Medicine> list() {
        List<Medicine> listMedicine = new ArrayList<>();
         
        Connection connection = DriverManager.getConnection(databaseURL, user, password) {
            String sql = "SELECT * FROM medicine";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                String name_med = result.getString("name_med");
				String activesub_med = result.getString("activesub_med");
				int milligram_med = result.getInt("milligram_med");
				int id_med = result.getInt("id_med");
				int id_sym = result.getInt("id_sym");
				int id_all = result.getInt("id_all");
                Medicine medicine = new Medicine(name_med, activesub_med, milligram, id_med, id_sym, id_all);
                     
                listMedicine.add(medicine);
            }           
             
        } 
         
        return listMedicine;
    }
	

 
@WebServlet("/list")
public class ListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            
        MedicineDAO dao = new MedicineDAO();
 
       
 
            List<Medicine> listMedicine = dao.list();
            request.setAttribute("listMedicine", listMedicine);
 
            RequestDispatcher dispatcher = request.getRequestDispatcher("pharmproduct.jsp");
            dispatcher.forward(request, response);
 
         
    
}
%>

<br>
<br>
<h2 style="text-align:center;">Pharmaceutical Products</h2> 
<br>
<br>
<br>
<br>
<br>


<table style="width:100%">

<td>
List of products


    <c:forEach items="${listMedicine}" var="medicine">
     
      <tr>
       
     <td>"${medicine.name_med}"</td>

       </tr>

    </c:forEach>

</td>
<td>
<td>




<div class="topnav">
 <br>
 <br>
  <input type="text" placeholder="Search by name">
   <a class="active" href="#home">Search by name</a>
   
</div>


<div class="topnav">
 <br>
 <br>
 <br>
 <br>
 <br>
  <input type="text" placeholder="Search by active substance">
   <a class="active" href="#home">Search by active substance</a>
  <br>
<br>
<br>  
<br>
<br>
<br>
   <button class="button">More Information</button>
   
</div>



</td>
</table>

<table border='2' style="width:8%">
  <tr>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
    <th><a href = "index_admin.php">Log out</a> </th>
   
  </tr>
</table>


</body>
</html>