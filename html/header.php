<?php
//STARTER SESSION
session_start();
//SJEKKER OM SESSION IKKE HAR FÅTT UL, SENDER TILBAKE TIL LOGIN
if ((!isset($_SESSION['ul']) || empty($_SESSION['ul'])) && empty($_GET['ul'])) {
	header("Location: login.php?ul=false");
}
//HVIS MAN FÅR LO I SESSION SÅ LOGGER DEN UT
if (isset($_GET['lo']) && $_GET['lo'] == "true") {
	logout();
}
?>

<DOCTYPE html>
<html>
	<head>
		<!-- HEAD -->
		<title>Westerdals Oslo ACT - Bookingside for CK32</title>
		<link rel="stylesheet" type="text/css" href="../css/main.css">
		<meta charset="utf-8">
	</head>

	<body>
		<!-- BODY -->
		<div id = "logo"><img src="../pic/logo.png"></div>