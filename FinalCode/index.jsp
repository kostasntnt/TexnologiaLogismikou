<htlm>
<style>
body {
  background-image: url('luis-melendez-Pd4lRfKo16U-unsplash.jpg');
    background-repeat: no-repeat;
  background-attachment: fixed;
   background-size: 100% 100%;
}
</style>
<body>


<div class="centered">
<h2 style="text-align:center;">Welcome to E-MDF!</h2> <br>
<h1 style="font-size:120%;">Please sign in to continue browsing in E-MDF Application </h1>
</div>
<br>
<br>
<br>
<br>
<h1 style="font-size:130%;">User Log in </h1>
<br>



<form name="myForm" method="post" action="ckecklog.jsp">
    <div id="div_login">
        <div id="message"></div>
        <div>
            <input type="text"  id="username" name="username" class="form-control" placeholder="Username" />
			<br>
        </div>
        <div>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password"/>
			<br>
        </div>
        <br>
        <button type="submit" name="action"  value="signin" class="btn">Log in</button>
        <button type="submit" name="action" value="signup" class="btn">Register</button>
</form>
        <br>
<br>
<br>
<br>
<h1 style="font-size:130%;">Admin Log in </h1>
<form name="myForm2" method="post" action="checklog2.jsp">
    <div id="div_login">
        <div id="message"></div>
        <div>
            <input type="text"  id="username" name="username" class="form-control" placeholder="Username" />
			<br>
        </div>
        <div>
            <input type="password" id="password" name="password" class="form-control" placeholder="Password"/>
			<br>
        </div>
        <div>
            <br> <br>
            <button type="submit" name="action"  value="signin" class="btn">Log in</button>
			<br>
        </div>
    </div>   </form>
	<br>
	


</body>
</html>