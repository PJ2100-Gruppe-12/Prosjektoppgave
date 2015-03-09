<?php

// Lib containing all db methods

mysql_connect("localhost", "root", "");
mysql_select_db("bookingSide");

function login($username, $password) {

	$query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";

	$result = mysql_query($query);
	$a = mysql_fetch_assoc($result);

	if (!empty($a)) {
		header("Location: win.php");
	}
	else {
		echo "Failure!";
	}
}

function register($username, $password, $confirmPassword) {
	if ($password == $confirmPassword) {
		$query = "INSERT INTO users (username, password) VALUES ('$username', '$password')";
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