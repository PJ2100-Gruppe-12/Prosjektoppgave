<?php  
include 'lib.php';
include 'header.php';


$urlid = $_GET["id"] ;
$result = mysql_query("SELECT * FROM bookings where roomId ='$urlid'") or die(mysql_error());
$array = mysql_fetch_assoc($result);
if(!$result) {
	echo "die"; 
}

$id = $array['id'];
$userId = $array['userId'];
$roomId = $array['roomId'];
$start = $array['start'];
$stop = $array['stop'];
$free = $array['free'];
echo $start. " " . $stop;	
print_r(explode(',', $start,3));
$date = date('Y-m-d H:i:s');
$timestamp = strtotime('Y-m-d H:i:s'. $date);
echo $timestamp . ": HER";
if($start<= $timestamp && $stop>=$timestamp){
	echo "ikke ledig";
}
else{
	echo '<div class = "ledig">ledig</div>';
}






?>

<select name="dropdown">
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="10">13</option>
<option value="10">14:00</option>
<option value="10">15:00</option>
<option value="10">16:00</option>
<option value="10">17:00</option>
<option value="10">18:00</option>
<option value="10">19:00</option>
<option value="10">20:00</option>
</select>
<input id= "submit" type="submit" value="SUBMIT">

</body>
</html>