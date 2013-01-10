<?php
include 'config.php';
$match_id = null;
function ismorethantime()
{	global $match_id;
	$s = upComing_match();
	$tim = explode(':',$s);
	$sec = ($tim[0]*365*60*60*24)+($tim[1]*60*30*60*24)+($tim[2]*60*60*24)+($tim[3]*60*60)+($tim[4]*60)+$tim[5];
	$match_id = $tim[6];
	return ($sec > 5400)?true:false;
}
page_protect();
if(isset($_GET['t']))
{					$te = $_GET['t'];
				$te = base64_decode($te);
				echo $te;
					//echo $_POST['value'];
					global $db;
					$id = $_SESSION['user_id'];
					$s = mysql_query("SELECT coin FROM user_data WHERE user_ID='$id';");
					$coi = mysql_fetch_array($s, MYSQL_ASSOC);
					$coi = $coi['coin'];

						$sq1 = mysql_query("SELECT * FROM `player` WHERE team = '$te' ORDER BY `type`,`price` ASC;");
						echo '<table border="1" style="position:ABSOLUTE;top:100px"><tr><td>Type</td><td>'.$te.'</td><td>Price</td></tr>';
						$i=0;$j=0;
						$pr = array();
						$ty = array();
						while($team1 = mysql_fetch_array($sq1, MYSQL_ASSOC)){
							$pr[$i] = $team1['price'];
							$ty[$i] = $team1['type'];
							$typ = ($ty[$i]=="All Rounder")?1:(($ty[$i]=="Batsman")?2:(($ty[$i]=="Bowler")?3:(($ty[$i]=="Wicketkeeper")?4:-1)));
							echo '<tr><td>'.$team1['type'].'</td>';
							echo '<td><input type="checkbox" onclick="team1('.$team1['price'].','.$i.','.$typ.')" id = '.$i.'/>'.$team1['name'].'</td><td>';
							echo $team1['price'].'</td></tr>';
							$i++;
						}
						echo '</table>';
					
				
				 }

?>
<html>
<textarea disabled="disabled" id="la" style="position:absolute;left:320px;top:150px"></textarea>
<script type="text/javascript">
					var sum ;
					var coin = <? echo $coi; ?>;
					var c = new Array();
					var allr = 1;
					var bowler = 4;
					var batman = 5;
					var wicketkeeper = 1;
					function team1(b,i,g){
						if(isNaN(c[i]))
						{	c[i]=0;
						}	
						if(c[i]==0){
							alert (b);
							if((coin-sum)>=b){
										if(g==1&&allr==0){
										alert('You Have Selected Enough All Rounder');
										}
										else if(g==2&&batman==0){
										alert('You Have Selected Enough Batman');									
										}
										else if(g==3&&bowler==0){
										alert('You Have Selected Enough Bowler');
																				}
										else if(g==4&&wicketkeeper==0){
										alert('You Have Selected Enough WicketKeeper');}
										
																			
										if(g==1&&allr>0){
										allr--;
										c[i]=1;
										sum = sum + b;
										}
										else if(g==2&&batman>0){
										batman--;
										c[i]=1;
										sum = sum + b;
										}
										else if(g==3&&bowler>0){
										bowler--;
										c[i]=1;
										sum = sum + b;
										}
										else if(g==4&&wicketkeeper>0){
										wicketkeeper--;
										c[i]=1;
										sum = sum + b;
										}
							}

						}
						
						else if(c[i]==1){
							if(g==1&&allr>=0){
							allr++;
							c[i]=0;
							sum = sum - b;
							}
							else if(g==2&&batman>=0){
							batman++;
							c[i]=0;
							sum = sum - b;
							}
							else if(g==3&&bowler>=0){
							bowler++;
							c[i]=0;
							sum = sum - b;
							}
							else if(g==4&&wicketkeeper>=0){
							wicketkeeper++;
							c[i]=0;
							sum = sum - b;
							}

						}
						
					 getsum();  
					}
					function getsum(){
					la.innerHTML = sum;
					return sum;
					}
					</script>
                   <form action="check.php" method="post" >
                  <input type="submit" value= "Chennai Super Kings" name="CSK"/>
                  <input type="submit" value= "Deccan Chargers" name="DC" />
                  <input type="submit"value= "Kings XI Punjab" name="KXIP" />
                  <input type="submit" value= "Kolkata Knight Riders" name="KKR" />
                  <input type="submit" value="Mumbai Indians" name= "MI" />
                  <input type="submit" value="Pune Warriors India" name= "PWI" />
                  <input type="submit" value= "Delhi Daredevils" name="DD" />
                  <input type="submit" value= "Rajasthan Royals" name="RR" />
                  <input type="submit" value= "Royal Challengers Bangalore" name="RCB" />
					</form>
</html>
