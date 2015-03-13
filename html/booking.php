<?php
include 'lib.php';
include 'header.php';	
$rooms = getBooking("0");

	



?>

	

	<?php 
		for ($i=0; $i < count($rooms); $i++) { 
			echo '<a class="rom-link" href="rom.php?id='.$rooms[$i]['id'].'"><div class = "box">'.$rooms[$i]['name'].'</div></a>';	
		}

	?>

	
	
</body>
</html>
<?php 
?>