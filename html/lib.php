<?php



// Lib containing all db methods

mysql_connect("localhost", "root", "");
mysql_select_db("bookingSide");

function login($username, $password) {

	$query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";

	$result = mysql_query($query);
	$rows = mysql_fetch_assoc($result);

	if (!empty($rows)) {
		$_SESSION['ul'] = $rows['id'];
		header("Location: booking.php");
	}
	else {
		echo "Failure!";
	}
}

function logout() {
	session_destroy();
	header("Location: login.php");
}

function register($username, $password, $confirmPassword,$sn, $pn, $tlf, $email) {
	if ($password == $confirmPassword) {
		
		$query = "INSERT INTO users (username, password, studentnr,pNr,tlf,email) 
		VALUES ('$username', '$password', '$sn','$pn','$tlf','$email')";
		$result = mysql_query($query);


		echo $result;
		if ($result) {
			echo "Success!";
		}
		else {
			echo "Failure!";
		}
	}
	else {
		echo "Passordene er ikke like...";
	}
}

function getBooking($id) {

	if ($id == "0") {
		// henter alle rom
		$r = mysql_query("SELECT * FROM rooms") or die(mysql_error());
		//error 
		if(!$r) {
			echo "die"; 
		}
		
		while ($row = mysql_fetch_assoc($r)) {
			$rooms[] = $row;
		}

		// henter alle bookinger
		$r = mysql_query("SELECT * FROM bookings");

		// setter inn variablen 'free' i rommene, så vi kan bruke det til å vise frem om rom er ledig eller ikke
		while ($row = mysql_fetch_assoc($r)){
			$rooms[$row['roomId']]['free'] = true; // TODO: sjekk om den er ledig (er valgt tid mellom bookingens start og end ($row['start'] etc) )
		}
		
		// returnerer det modifiserte rom-arrayet
		return $rooms;


	}

}

function addBooking() {

}

?>