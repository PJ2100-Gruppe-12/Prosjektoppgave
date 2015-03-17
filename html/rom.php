<?php
	include 'lib.php';
	include 'header.php';
	//if (!empty($_POST)) {
	//	addBooking(userID['un'], $_POST['pw'], $_POST['cpw'], $_POST['sn'], $_POST['pn'],$_POST['tlf'], $_POST['email']);
	//}

	$urlid = $_GET['id'] ;
	$result = mysql_query("SELECT * FROM bookings where roomId ='$urlid'") or die(mysql_error());
	$array = mysql_fetch_assoc($result);
	if(!$result) {
		echo "die"; 
	}
	//navngir start og stopp fra mysql
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
	$dato = date('Y-m-d');
	echo $dato;
	if($start<= $stringToDate && $stop>=$stringToDate){
		echo '<div id = "ikkeLedig">ikke ledig til: ' .$stop. '</div>';
	}
	else{
		echo '<div class = "ledig">ledig</div>';
	}

	//TODO lage en selector til hvilken tid man skal bruke og submitter informasjonen til databasen.
	if (isset($_POST['dropdown'])) {
		addBooking($urlid,$_POST['dropdown'],$dato);
	}
	else{
		echo "  "."velg en tid";
	}
		
?>
	
	<form name= "choise" method ="post">
	<select name="dropdown">
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
	<input name = "submit" id= "submit" type="submit" value="SUBMIT">
	</select>
	
	</form>

	 
<?php
?>
	
</body>
</html>