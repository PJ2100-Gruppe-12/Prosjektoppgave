<?php
//inkluderer lib og header (lib er funksjonene, + header som er for layout.)
include 'lib.php';
include 'header.php';
if (isset($_SESSION['ul']) && !empty($_SESSION['ul'])) {
	header("Location: booking.php");
}
if (!empty($_POST)) {
	login($_POST['un'], $_POST['pw']);
}

?>
	
		
		<div id = "loginBackground">
			<div id = "loginText"></div>
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