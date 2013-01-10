<?php

if(isset($_POST['CSK']))
$te = 'Chennai Super Kings';
else if(isset($_POST['DC']))
$te = 'Deccan Chargers';
else if(isset($_POST['KXIP']))
$te = 'Kings XI Punjab';
else if(isset($_POST['KKR']))
$te = 'Kolkata Knight Riders';
else if(isset($_POST['MI']))
$te = 'Mumbai Indians';
else if(isset($_POST['PWI']))
$te = 'Pune Warriors India';
else if(isset($_POST['DD']))
$te = 'Delhi Daredevils';
else if(isset($_POST['RR']))
$te = 'Rajasthan Royals';
else if(isset($_POST['RCB']))
$te = 'Royal Challengers Bangalore';

$te = base64_encode($te);
		  header("Location: select_team.php?t=$te");

echo $te;
?>