<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
  <head>
    <title>Simple Map</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDIZPZYPTpf_L2cxaXjzApY0oFxyNXVnHM&callback=initMap&libraries=&v=weekly"
      defer
    ></script>
    <style type="text/css">
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }

      /* Optional: Makes the sample page fill the window. */
      html,
      body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
       <%
     String getcor1 =request.getParameter("hos15");
      
  //   out.println(getlastname);
          try{
         java.sql.Driver d=new com.mysql.jdbc.Driver();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/texnologialog", "root" ,"");
       Statement stmt = null;

       stmt = con.createStatement();
String sql = "SELECT * FROM hospital WHERE name_hos='"+getcor1 +"'";
 ResultSet rs = stmt.executeQuery(sql);
 while(rs.next()){
          out.println("Lat is :");
          out.println(rs.getString("lat_hos"));
          out.println("<br>");
                    out.println("Long is :");
          out.println(rs.getString("lng_hos"));
          out.println("<br>");
                float f = Float.parseFloat(rs.getString("lng_hos"));
                float f2 = Float.parseFloat(rs.getString("lat_hos"));
out.println(f);
out.println(f2);


session.setAttribute("sessname1",rs.getString("lng_hos")); 

session.setAttribute("sessname",rs.getString("lat_hos")); 


          }
          

          }
          
          
   catch(Exception ex){
   ex.getMessage();
   }      

String name=(String)session.getAttribute("sessname");
String name1=(String)session.getAttribute("sessname1");
                float f = Float.parseFloat(name);
                float f2 = Float.parseFloat(name1);
      %>


    <script type="text/javascript" >
              var value = "<%= f %>";
var value1 = "<%= f2 %>";
document.write(value);
        function valid()
{


  
/* do whatever you want with value */
/* do whatever you want with value */
}
    
      (function(exports) {
        "use strict";

        function initMap() {

             
          exports.map = new google.maps.Map(document.getElementById("map"), {
            center: {
              lat: 38.246457,
              lng: 21.735277
            },
            zoom: 14
          });
          myMarker = new google.maps.Marker({
            position: new google.maps.LatLng(value, value1),
            draggable: true,
            map: map
        });
        }

        exports.initMap = initMap;
      })((this.window = this.window || {}));
    </script>
  </head>
  <body>
      
    <div id="map"></div>
  </body>
</html>