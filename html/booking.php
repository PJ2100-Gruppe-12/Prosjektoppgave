<?php
include 'lib.php';
include 'header.php';	
$rooms = getBooking("0");

	



?>

	

<?php

		
		
		for ($i=1; $i < 7; $i++) { 
			echo '<a href = "booking.php?floor='.$i.'">'.$i.'</a>';
		}
		
		$userfloor=$_GET['floor'];

		
		for ($i=0; $i < count($rooms); $i++) { 
			if ($rooms[$i]['floor']==$userfloor) {
			//Lager en separat link for hver id ($rooms[i]['id'])
			echo '<a class="rom-link" href="rom.php?id='.$rooms[$i]['id'].'"><div class = "box" id = "rom'. $rooms[$i]['id'] 
			.'" >'.$rooms[$i]['name'].'</div></a>';	
			}

		}
		

?>

	
	
</body>
</html>
<?php
?>