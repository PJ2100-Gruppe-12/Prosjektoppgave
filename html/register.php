<?php
include 'lib.php';
if (!empty($_POST)) {
	register($_POST['un'], $_POST['pw'], $_POST['cpw'], $_POST['sn'],$_POST['tlf'], $_POST['email']);
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
		<div id = "logo"><img src="../pic/logo.png"></div>
		<nav>
			<a class="link" href="login.php" alt="#">Tilbake</a>
		</nav><br>
		<div id = "loginBackground"></br></br>
			<form id = "login" method="post"><br>

				Brukernavn:<br>
				<input class ="inputField" type="text" name="un" />
				<br/>

				Passord :<br>
				<input class = "inputField" type="password" name="pw" />
				<br/>

				Bekreft passord:<br>
				<input class = "inputField" type="password" name="cpw" />
				<br/><br/>

				Studentnummer:<br>
				<input class ="inputField" type="text" name="sn" />
				<br/>

				Telefon:<br>
				<input class ="inputField" type="text" name="tlf" />
				<br/>

				Email:<br>
				<input class ="inputField" type="text" name="email" />
				<br/><br>
				<input class= "submit" type="submit" value="Registrer" />
			</form>	
		</div>
	</body>
</html>
	



