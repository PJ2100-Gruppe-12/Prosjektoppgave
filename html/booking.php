<?php
include 'lib.php';
if (!empty($_POST)) {
	login($_POST['un'], $_POST['pw']);
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
<div id = "bakgrunn"></div>
	<div id = "header">
	<div id = "logo"><img src="../pic/logo.png"></div>
	</div>
	
	
</body>
</html>
<?php 
?>