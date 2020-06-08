<html>
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
	font-size: 15px;
}


.dropbtn {
  background-color: Gray;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>
<body>

<h3 style="text-align:center;">Create a meeting with your doctor following the steps below</h3>
<br><br><br><br><br>
<form name="map1"   action="conmap.jsp">
  <label for="birthday">Please choose the date you wish to make a meeting</label>
  <input type="date" id="birthday" name="birthday">








<br><br>
 <label for="hours">Please choose the time you wish to complete the process</label>
  <select id="hours" name="hours">
  <option value="9:00">9:00</option>
  <option value="10:00">10:00</option>
  <option value="11:00">11:00</option>
  <option value="12:00">12:00</option>
  <option value="13:00">13:00</option>
  <option value="14:00">14:00</option>
  <option value="15:00">15:00</option>
  <option value="16:00">16:00</option>
  <option value="17:00">17:00</option>

</select>
<br><br><br><br>
<u>If you complete your choice press the button to save the changes</u>
<br><br><br><br><br>
<input type="submit" value="Save">
     </form>

<br><br><br><br><br><br><br>
<h5>After you save your choice the doctor will be able to see your preference and contract with you about validation of meeting </h5>

</body>
</html>