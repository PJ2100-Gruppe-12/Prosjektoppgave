<?php
// LIB MED ALLE FUNKSJONENE

mysql_connect("localhost", "root", "");
mysql_select_db("bookingSide");

function login($username, $password) {
	//QUERY TIL DATABASE SOM HENTER UT BRUKER OG SJEKKER OM PASSORDET STEMMER OVERENS MED BRUKER
	$query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
	$result = mysql_query($query);
	//henter array fra queryen 
	$rows = mysql_fetch_assoc($result);
	//HVIS DETTE STEMMER SÅ STARTER MAN SESSION OG SENDER DEG TIL BOOKING.PHP
	$userid = $rows['id'];
	if (!empty($rows)) {
		$_SESSION['ul'] = $rows['id'];
		header("Location: booking.php?floor=1");
	}
	else {
		$failureLogin = '<div class = failure>Feil passord eller brukernavn</div>';
		echo $failureLogin;
	}
	return $userid;
}
function logout() {
	//AVSLUTTER SESSION
	session_destroy();
	header("Location: login.php");
}

function register($username, $password, $confirmPassword,$sn, $tlf, $email) {
	//SJEKKER OM PW = CPW
	if ($password == $confirmPassword) {
		//QUERRY TIL DATABASE FOR Å LEGGE INN INFORMASJONEN
		$query = "INSERT INTO users (username, password, studentnr,tlf,email) 
		VALUES ('$username', '$password', '$sn','$tlf','$email')";
		$result = mysql_query($query);

		echo $result;
		//HVIS RESULT HAR DATA SUCCESS
		if ($result) {
			echo "Success!";
			header("Location: login.php");
		}
		//HVIS IKKE FAILURE
		else {
			$failurePasswordRegister = '<div class = "failure">Verdiene du har oppgitt er ikke gyldige</div>';
			echo $failurePasswordRegister;
		}
	}
	//HVIS PW IKKE = CPW ECHO ERROR
	else {
		$failurePasswordNotSame = '<div class = "failure">"Passordene er ikke like..."</div>';
		echo $failurePasswordNotSame;
	}
}

function getBooking($id) {

	if ($id == "0") {
		//HENTER ALLE ROM
		$r = mysql_query("SELECT * FROM rooms") or die(mysql_error());
		//ERRORLOG
		if(!$r) {
			echo "die"; 
		}
		//LAGER ARRAY TIL ROW
		while ($row = mysql_fetch_assoc($r)) {
			$rooms[] = $row;
		}

		// HENTER ALLE BOOKINGER
		$r = mysql_query("SELECT * FROM bookings");
		?>
		<div class = "links">
			<?php
			$userfloor=$_GET['floor'];
			$spots = $row['spots'];
			echo '<div class = "links">';
			//LAGER EN SEPARAT LINK FOR HVER LINK ETTER HVILKET FLOOR OG HVOR MANGE SPOTS
			for ($i=0; $i < count($rooms); $i++) { 
				if ($rooms[$i]['floor']==$userfloor) {
					if($rooms[$i]['spots']==3){
						echo '<a class="rom-link" href="rom.php?id='.$rooms[$i]['id'].'"><div class = "box" >'.$rooms[$i]['name'].'</div></a>';		
					}
					if ($rooms[$i]['spots']==4) {
						echo '<a class="rom-link" href="rom.php?id='.$rooms[$i]['id'].'"><div class = "bigBox" >'.$rooms[$i]['name'].'</div></a>';		
					}
					if($rooms[$i]['spots'] ==2){
						echo '<a class="rom-link" href="rom.php?id='.$rooms[$i]['id'].'"><div class = "smallBox" >'.$rooms[$i]['name'].'</div></a>';
					}
				}
			}
			?>
		</div>
		<?php
	}
}
function addBooking($roomId,$tid,$date) {
	
	$urlid = $_GET['id'];
	//HENTER UT ROM INFO
	$result = mysql_query("SELECT * FROM bookings where roomId ='$urlid'") or die(mysql_error());
	$array = mysql_fetch_assoc($result);
	if(!$result) {
		echo "die"; 
	}
	//NAVNGIR START OG STOPP FRA MYSQL
	$start = $array['start'];
	$stop = $array['stop'];
	$start = "$date" . " "  . $tid;
	$stop = date('Y-m-d H:i:s', strtotime("$start + 1 hours"));
	$ul = $_SESSION ['ul'];
	
	$checkQuery = "SELECT * FROM `bookings` WHERE roomId = '$roomId' AND start = '$start'";
	$doQuery = mysql_query($checkQuery);
	
	if(mysql_num_rows($doQuery) == 0){
		$query = "INSERT INTO `bookings`(`userid`,`roomId`, `start`,`stop`) VALUES ('$ul','$roomId','$start','$stop')";
		$result = mysql_query($query);
		$successToBook = '<div class = "success">Du har nå booket : rom'.$roomId .'  fra '. $start." til : ". $stop. '</div>';
		echo $successToBook;
	}
	else{
		echo '<div class = "failure">Denne tiden er allerede booket</div>';
	}
}

?>