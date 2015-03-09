<?php
include 'lib.php';
if (!empty($_POST)) {
register($_POST['un'], $_POST['pw'], $_POST['cpw']);
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

	<div id = "header">
	<div id = "logo"><img src="../pic/logo.png"></div>
	</div>
	<div id = "loginBackground">
		<div id = "loginText">Her registrerer du din bruker</div>
		<form id = "login" method="post">
			
			Brukernavn:<br/>
			<input class ="inputField" type="text" name="un" />
			<br/>

			Passord :<br/>
			<input class = "inputField" type="password" name="pw" />
			<br/>
			
			Bekreft passord:<br/>
			<input class = "inputField" type="password" name="cpw" />
			<br/>

			<input type="submit" value="Submit" />

		</form>	
	</div>
</body>
</html>
s



