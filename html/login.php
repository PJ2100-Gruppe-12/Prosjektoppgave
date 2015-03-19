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
        <nav>
            <a class="link" href="register.php" alt="#">Register her</a><br><br>
        </nav>
		<div id = "loginBackground">
			<br/>
			<br/>

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
		</div>

	</body>
	</html>
<?php
?>