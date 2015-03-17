<?php
include 'lib.php';
include 'header.php';
include 'nav.php';
include 'etasje.php';
$rooms = getBooking("0");
	



?>

	

<?php

		//Lager en separat link for hver id ($rooms[i]['id'])
		echo '<a href = "booking.php?floor=1"></a>';
		

		for ($i=0; $i < count($rooms); $i++) { 
			//TODO sjekk hvilken etasje bruker vil ha. 1-6
			if ($rooms[$i]['floor']==1) {
			echo '<div id="box"><a class="rom-link" href="rom.php?id='.$rooms[$i]['id'].'"><div class = "box" id = "rom'. $rooms[$i]['id']
			.'" >'.$rooms[$i]['name'].'</div></a></div>';
			}
		}
		

?>

	
	
</body>
</html>
<?php
?>