<?php
include 'lib.php';
if (!empty($_POST)) {
	login($_POST['un'], $_POST['pw']);
}
?>
<DOCTYPE html>
	<html>
	<head>
		<!-- HEAD -->
		<title>BookingSide</title>
		<link rel="stylesheet" type="text/css" href="../css/main.css">
		<meta charset="utf-8">
	</head>

	<body>
		<!-- BODY -->
		<div id = "bg"></div>
		
		<div id = "logo"><img src="../pic/logo.png"></div>
		
		<div id = "loginBackground">
			<div id = "loginText">Her logger du inn din bruker til vårt bookingsystem</div>
			<br/>
			<br/>
			<div id = "register"><a href="register.php">Registrer</a></div>
			<form id = "login" method="post">
			</br>
				Brukernavn:<br/>
				<input class ="inputField" type="text" name="un">
				<br><br/>

				Passord :<br/>
				<input class = "inputField" type="password" name="pw">
				<br/>
				<br/>
				<input id= "submit" type="submit" value="Logg inn">
			</form>	
		</div>
	</body>
	</html>
	<?php 
	?>