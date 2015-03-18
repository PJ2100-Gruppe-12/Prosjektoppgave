
<?php
include 'header.php';
include 'nav.php';
include 'lib.php';


$id = 0;
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
?>
<div class = "links">
<?php		
	
		
		
		$spots = $row['spots'];

		echo $spots;
		

		echo '<div class = "links">';
		for ($i=0; $i < count($rooms); $i++) { 
			
			//Lager en separat link for hver id ($rooms[i]['id'] etter hvor mange spots)
			if[$rooms[$i]
			if($rooms[$i]['spots'] ==4){
			echo '<a class="rom-link" href="rom.php?id='.$rooms[$i]['id'].'"><div class = "bigBox" >'.$rooms[$i]['name'].'</div></a>';		
				
			}

			
		}
	}
				
?>
</div>
<?php
?>



</body>
</html>
