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
		<div id = "bg"></div>
		
		<div id = "logo"><img src="../pic/logo.png"></div>
		<?php if (isset($_SESSION['ul']) && !empty($_SESSION['ul'])) {
			echo '<a href="booking.php?lo=true">Logg ut</a>';
		}
		
?>
