<?php

// Lib containing all db methods

mysql_connect("localhost", "root", "");
mysql_select_db("bookingSide");

function login($username, $password) {

	$query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";

	$result = mysql_query($query);
	$a = mysql_fetch_assoc($result);

	if (!empty($a)) {
		header("Location: booking.html");
	}
	else {
		echo "Failure!";
	}
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

function getBooking() {

}

function addBooking() {

}

?>