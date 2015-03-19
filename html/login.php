<?php
//inkluderer lib og header (lib er funksjonene, + header som er for layout.)
include 'lib.php';
include 'header.php';

if (isset($_SESSION['ul']) && !empty($_SESSION['ul'])) {
	header("Location: booking.php?floor=1");
}
if (!empty($_POST)) {
	login($_POST['un'], $_POST['pw']);
}

?>
<h1>Rombooking CK32</h1><br>
<div id = "loginBackground">
	<form id = "login" method="post">
	</br>
	Brukernavn:<br/>
	<input class ="inputField" type="text" name="un">
	<br><br/>

	Passord :<br/>
	<input class = "inputField" type="password" name="pw">
	<br/>
	<br/>
	<input class= "submit" type="submit" value="Logg inn"><br><br>

</form>	
<p>
	Logg inn med din bruker, eller <nav>
	<a class="link" href="register.php" alt="#">Registrer deg her</a></nav>
<p/>
</body>
</html>
