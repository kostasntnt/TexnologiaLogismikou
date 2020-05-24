<html>
<style>
body {
  background-image: url('luis-melendez-Pd4lRfKo16U-unsplash.jpg');
    background-repeat: no-repeat;
  background-attachment: fixed;
   background-size: 100% 100%;
}
</style>
<head>

<link rel="stylesheet" type="text/css" href="style2.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<div class="container">
	<div class="login">
	<h1> Registration Form: </h1>
	<b>Please Insert your username,password and email to continue the process. </b>
	<form id="register_form" name="register_form" method="post" action="register_user.php"> </p>
	    <p><input id="username" type="username" name="username" placeholder="Username" required  autofocus autocomplete=off> </p>
		<p><input id="email" type="email" name="email" placeholder="Email" required  autofocus autocomplete=off> </p>
		<p><input id="password" type="password" name="password" placeholder="Password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
		title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"> 
		<p class="submit"><input type="submit" value="Register">  </p>
	</form>
	</div>
</div>
</body>
</html>