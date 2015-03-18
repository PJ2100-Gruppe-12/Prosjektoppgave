<?php
session_start();
if ((!isset($_SESSION['ul']) || empty($_SESSION['ul'])) && empty($_GET['ul'])) {
	header("Location: login.php?ul=false");
}
if (isset($_GET['lo']) && $_GET['lo'] == "true") {
	logout();
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
		<div id = "bg"><img id = "bgd"src="../pic/bg_dobbel.png"></div>
		<div id ="wrapper">
			
			
		</div><br>
<?php

		
?>
