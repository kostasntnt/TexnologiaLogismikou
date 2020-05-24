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
	font-size: 23px;
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

<br>
<br>
<h2 style="text-align:center;">E-MDF Special Tool</h2> 
<br>
<br>
<br>

<table style="width:100%">
<tr>
<td>
<div class="dropdown">
  <button class="dropbtn">Choose a Disease</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
</td>
<td>
<div class="dropdown">
  <button class="dropbtn">Choose a Symptom</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
</td>
</tr>

<tr>
<td>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="dropdown">
  <button class="dropbtn">Choose an Allergy</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
</td>
<td>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="dropdown">
  <button class="dropbtn">Choose an inappropriate Pharmaceutical Product</button>
  <div class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
</td>
</tr>

<tr>
<td>
<br>
<br>
<br>
<br>
<button class="button">Show the Solution</button>
<br>
<br>

<textarea id="w3mission" rows="4" cols="50">

</textarea>
</td>
</tr>

</table>

<table border='2' style="width:8%">
  <tr>
  <br>
  <br>
 
    <th><a href = "index_admin.php">Log out</a> </th>
   
  </tr>
</table>
</body>
</html>