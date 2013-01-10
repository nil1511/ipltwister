<?php
include 'config.php';
$con = mysql_connect($DBPATH,$DBUSER,$DBPASS) or die('Could not connect');
$dbsel = mysql_select_db($DBNAME);
$result=mysql_query('SELECT * FROM match_schedule');
    echo '<table border="1">';
	echo'<tr><td>DAY</td><td>Date</td><td>Teams</td><td>Venue</td></tr>';
while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
    printf("<tr><td>%s</td><td>%s</td><td>%s VS %s</td><td>%s</td></tr>", $row["day"], substr($row["DateTime"],0,11),$row['team1'],$row['team2'],$row['venue']);
}
echo'</table>';
?>