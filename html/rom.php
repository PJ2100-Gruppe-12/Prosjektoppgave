<?php
include 'lib.php';
include 'header.php';
include'nav.php';


$urlid = $_GET['id'];
$result = mysql_query("SELECT * FROM bookings where roomId ='$urlid'") or die(mysql_error());
$array = mysql_fetch_assoc($result);
	

if(!$result) {
	echo "die"; 
}
	//navngir start og stopp fra mysql
$start = $array['start'];
$stop = $array['stop'];
$now = date("y-m-d h:i:s");
$timestamp = strtotime($now);








if (isset($_POST['time']) && isset($_POST['date'])) {
	addBooking($_GET['id'],$_POST['time'],$_POST['date']);
}
else{
	echo "  ";
}
?>

<form class = "form1" name= "choise" method ="post">
	<div class = "tekst">Velg tid og dato for å registrere booking</div><br><br><br>

	<input id = "date" type="date" name="date">

	<select name="time" id = "time">
		<option value="10:00:00">10:00</option>
		<option value="11:00:00">11:00</option>
		<option value="12:00:00">12:00</option>
		<option value="13:00:00">13:00</option>
		<option value="14:00:00">14:00</option>
		<option value="15:00:00">15:00</option>
		<option value="16:00:00">16:00</option>
		<option value="17:00:00">17:00</option>
		<option value="18:00:00">18:00</option>
		<option value="19:00:00">19:00</option>
		<option value="20:00:00">20:00</option>
		
		<br><br>
		<input name = "submit" id = "regtime" class= "submit" type="submit" value="SUBMIT">
	</select>

	
</form>

<?php
?>


</body>
</html>


