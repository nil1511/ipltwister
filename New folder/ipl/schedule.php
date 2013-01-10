<?php
include 'config.php';
$con = mysql_connect($DBPATH,$DBUSER,$DBPASS) or die('Could not connect');
$dbsel = mysql_select_db($DBNAME);
$result=mysql_query('SELECT * FROM match_schedule');
	    echo '<img src="dock3.png" style="width:1050px;height:50px" /><table border="0" style="position:absolute;left:100px;top:0px;">';
	echo'<tr height="50"><td><center><b>DAY</td><td><center><b>DATE</td><td><center><b>TEAMS</td><td><center><b>VENUE</td></tr>';
	$l=50;
while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
	$l=$l+150;
	 
    printf("<tr height=\"150\"><td background=\"dock5.png\"><H1 style=\"color:white;align:right;\">%s</td><td background=\"dock5.png\"><H2 style=\"color:white;align:right;\">%s</td><td background=\"dock4.png\">..<img src=\"%s.png\"> <b>vs <img src=\"%s.png\" align=\"right\"></td><td background=\"dock5.png\"><H1 style=\"color:white;\" align=\"right\">\t%s</td></tr>", $row["day"], substr($row["DateTime"],0,11),$row['team1'],$row['team2'],$row['venue']);
}
echo'</table>';
?>