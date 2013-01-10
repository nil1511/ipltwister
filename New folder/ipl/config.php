<?php
$DBPATH = 'localhost';
$DBUSER = 'root';
$DBPASS = '';
$DBNAME = 'ipl';
$mailID = 'nil.15111993@daiict.ac.in'; 
define("COOKIE_TIME_OUT", 10); //specify cookie timeout in days (default is 10 days)
/**** PAGE PROTECT CODE  ********************************
This code protects pages to only logged in users. If users have not logged in then it will redirect to login page.
If you want to add a new page and want to login protect, COPY this from this to END marker.
Remember this code must be placed on very top of any html or php page.
********************************************************/
$con = mysql_connect($DBPATH,$DBUSER,$DBPASS) or die('Could not connect');
$db = mysql_select_db($DBNAME);
function page_protect() {
session_start();

global $db; 

/* Secure against Session Hijacking by checking user agent */
if (isset($_SESSION['HTTP_USER_AGENT']))
{
    if ($_SESSION['HTTP_USER_AGENT'] != md5($_SERVER['HTTP_USER_AGENT']))
    {
        logout();
        exit;
    }
}
}

function GenKey($length = 7)
{
  $password = "";
  $possible = "0123456789abcdefghijkmnopqrstuvwxyz"; 
  
  $i = 0; 
    
  while ($i < $length) { 

    
    $char = substr($possible, mt_rand(0, strlen($possible)-1), 1);
       
    
    if (!strstr($password, $char)) { 
      $password .= $char;
      $i++;
    }

  }

  return $password;

}
function logout()
{
global $db;
session_start();

if(isset($_SESSION['user_id']) || isset($_COOKIE['user_id'])) {
mysql_query("update `userlog` 
			set `ckey`= '', `ctime`= '' 
			where `id`='$_SESSION[user_id]' OR  `id` = '$_COOKIE[user_id]'") or die(mysql_error());
}			

/************ Delete the sessions****************/
unset($_SESSION['user_id']);
unset($_SESSION['user_name']);
unset($_SESSION['user_level']);
unset($_SESSION['HTTP_USER_AGENT']);
session_unset();
session_destroy(); 

/* Delete the cookies*******************/
setcookie("user_id", '', time()-60*60*24*COOKIE_TIME_OUT, "/");
setcookie("user_name", '', time()-60*60*24*COOKIE_TIME_OUT, "/");
setcookie("user_key", '', time()-60*60*24*COOKIE_TIME_OUT, "/");

header("Location: login.php");
}
function upComing_match(){
	global $db;
$currentdate= gmdate("y-m-d H:i:s");

$result =mysql_query("SELECT ID,DateTime FROM `match_schedule`");
while ($array = mysql_fetch_array($result, MYSQL_ASSOC)) {
	 $d = strtotime($array["DateTime"])-strtotime($currentdate);
	if($d > 0){
		$id =$array["ID"];
		$years = floor($d / (365*60*60*24));
		$months = floor(($d - $years * 365*60*60*24) / (30*60*60*24));
		$days = floor(($d - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
		$hour =floor(($d - $years * 365*60*60*24 - $months*30*60*60*24 - $days*60*60*24)/(60*60));
		$minute= floor(($d - $years * 365*60*60*24 - $months*30*60*60*24 - $days*60*60*24 - $hour*60*60)/60) ;
		$seconds = floor(($d - $years * 365*60*60*24 - $months*30*60*60*24 - $days*60*60*24 - $hour*60*60 - $minute*60)); 
		return "$years:$months:$days:$hour:$minute:$seconds:$id";
		break;
		}
}
}

?>
