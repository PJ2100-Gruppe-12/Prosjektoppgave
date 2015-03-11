<?php

mysql_connect("localhost","root", "") or die(mysql_error());
mysql_select_db("bookingside");

$result = mysql_query("SELECT * FROM rooms where name ='rom1'") or die(mysql_error());
if(!$result) {
	echo "die"; 
}

$row = mysql_fetch_row($result);
$id = $row[0];
$name = $row[1];
$spots = $row[2];
$projector = $row[3];
echo $name;


?>

<DOCTYPE html>
	<html>
	<head>
		<!-- HEAD -->
		<title>BookingSide</title>
		<link rel="stylesheet" type="text/css" href="/Prosjektoppgave/css/main.css">
		<meta charset="utf-8">
	</head>

	<body>
		<!-- BODY -->
		<div id = "bg"></div>
		<a href="rom1.php"><div id = "box">antall plasser: <?php echo $spots?></div></a>
		<div id = "logo"><img src="../pic/logo.png"></div>
	</body>
</html>

<?php 
?>