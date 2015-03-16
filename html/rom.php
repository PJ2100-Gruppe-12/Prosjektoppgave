<?php
	include 'lib.php';
	include 'header.php';
	//if (!empty($_POST)) {
	//	addBooking(userID['un'], $_POST['pw'], $_POST['cpw'], $_POST['sn'], $_POST['pn'],$_POST['tlf'], $_POST['email']);
	//}

	$urlid = $_GET["id"] ;
	$result = mysql_query("SELECT * FROM bookings where roomId ='$urlid'") or die(mysql_error());
	$array = mysql_fetch_assoc($result);
	if(!$result) {
		echo "die"; 
	}
	//navngir alle enkelte elementene fra mysql
	$id = $array['id'];
	$userId = $array['userId'];
	$roomId = $array['roomId'];
	$start = $array['start'];
	$stop = $array['stop'];
	//bare for å se start og stopp på enkelte rom
	echo $start. " " . $stop;
	//current date + format. 	
	$date = date('Y-m-d H:i:s');
	//gjør om date() til riktig format
	$stringToDate = date('Y-m-d H:i:s', strtotime($date));
	$timestamp = strtotime('Y-m-d H:i:s'. $date);
	//sjekker om rommet er ledig akuratt nå.
	if($start<= $stringToDate && $stop>=$stringToDate){
		echo '<div id = "ikkeLedig">ikke ledig til: ' .$stop. '</div>';
	}
	else{
		echo '<div class = "ledig">ledig</div>';
	}

	//TODO lage en selector til hvilken tid man skal bruke og submitter informasjonen til databasen.
	$selectTid = '
	<form>
	<select name="choise">
		<option value="10">10:00</option>
		<option value="11">11:00</option>
		<option value="12">12:00</option>
		<option value="13">13:00</option>
		<option value="14">14:00</option>
		<option value="15">15:00</option>
		<option value="16">16:00</option>
		<option value="17">17:00</option>
		<option value="18">18:00</option>
		<option value="19">19:00</option>
		<option $submit value="20" name = "tid">20:00</option>
	</select>
	<input id= "submit" type="submit" value="SUBMIT">
	</form>
	' 
?>
	
<?php
echo $selectTid	;
?>
	
</body>
</html>