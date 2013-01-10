<?php
include 'config.php';
global $db;

$sql = mysql_query('SELECT username, total_score FROM `user_data` ORDER BY total_score DESC');
echo '<img src="dock3.png" style="width:1050px;height:50px" />';
echo '<center><table border="00" style="position:absolute;top:0px;left:200px;"><tr height="50"><td><B>Rank</td><td width="500"><b><center>Name</td><td><b>Total Score</td></tr>';
$i=1;
while($array = mysql_fetch_assoc($sql)){
echo '<tr bgcolor="#909090"><td ><h4>'.$i.'</td><td><h4>'.$array['username'].'</td><td><h4>'.$array['total_score'].'</td></tr>';
$i++;
}
echo '</table>';
?>