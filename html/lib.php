<?php



// Lib containing all db methods

mysql_connect("localhost", "root", "");
mysql_select_db("bookingSide");

function login($username, $password) {
	//query til databasen som henter henter ut bruker og sjekker om passordet er tilhørende den linjen
	$query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
	$result = mysql_query($query);
	//henter array fra queryen 
	$rows = mysql_fetch_assoc($result);
	//hvis dette stemmer så starter man session, og sender deg til booking.php
	$userid = $rows['id'];
	if (!empty($rows)) {
		$_SESSION['ul'] = $rows['id'];
		header("Location: booking.php?floor=1");
	}
	else {
		echo "Failure!";
	}
	return $userid;
}
//legger til en funksjon som bryter av session (ikke tilkoblet en database.)
function logout() {
	session_destroy();
	header("Location: login.php");
}

function register($username, $password, $confirmPassword,$sn, $pn, $tlf, $email) {
	//denne sjekker om pw stemmer med confirmpw
	if ($password == $confirmPassword) {
		//querry til database for å legge til bruker info
		$query = "INSERT INTO users (username, password, studentnr,pNr,tlf,email) 
		VALUES ('$username', '$password', '$sn','$pn','$tlf','$email')";
		$result = mysql_query($query);


		echo $result;
		//hvis result har data success
		if ($result) {
			echo "Success!";
			header("Location: login.php");
		}
		//hvis ikke failure
		else {
			echo "Failure!";
		}
	}
	//slutt på pw if == cpw
	else {
		echo "Passordene er ikke like...";
	}
}

function getBooking($id) {

	if ($id == "0") {
		// henter alle rom
		$r = mysql_query("SELECT * FROM rooms") or die(mysql_error());
		//error 
		if(!$r) {
			echo "die"; 
		}
		//lager array
		while ($row = mysql_fetch_assoc($r)) {
			$rooms[] = $row;
		}

		// henter alle bookinger
		$r = mysql_query("SELECT * FROM bookings");

	
		// returnerer det modifiserte rom-arrayet
		for ($i=1; $i < 7; $i++) { 
			echo '<a href = "booking.php?floor='.$i.'">'.$i.'</a>';
		}
		
		$userfloor=$_GET['floor'];
		
		$spots = $row['spots'];

		echo $spots;
		

		echo '<div class = "links">';
		for ($i=0; $i < count($rooms); $i++) { 
			if ($rooms[$i]['floor']==$userfloor) {
			//Lager en separat link for hver id ($rooms[i]['id'])
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
		echo '</div>';


	}

}

function addBooking($roomId,$tid,$date) {
	
	$start = "$date" . " "  . $tid;
	$stop = date('Y-m-d H:i:s', strtotime("$start + 1 hours"));
	$ul = $_SESSION ['ul'];
	
	$checkQuery = "SELECT * FROM `bookings` WHERE roomId = '$roomId' AND start = '$start'";
	$doQuery = mysql_query($checkQuery);
	
	

	if(mysql_num_rows($doQuery) == 0){
		
		$query = "INSERT INTO `bookings`(`userid`,`roomId`, `start`,`stop`) VALUES ('$ul','$roomId','$start','$stop')";
		$result = mysql_query($query);
		echo "LAGT TIL EN BOOKING: ". $start. " TIL : ". $stop;
		
	}
	else{
		echo "denne dagen er allerede booket";
	}






}

?>