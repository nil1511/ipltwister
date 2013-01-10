<?php
include 'config.php';
global $db;

$sql = mysql_query('SELECT username, total_score FROM `user_data` ORDER BY total_score DESC');
echo '<table border="1"><tr><td>Rank</td><td>Name</td><td>Total Score</td></tr>';
$i=1;
while($array = mysql_fetch_assoc($sql)){
echo '<tr><td>'.$i.'</td><td>'.$array['username'].'</td><td>'.$array['total_score'].'</td></tr>';
$i++;
}
echo '</table>';
?>