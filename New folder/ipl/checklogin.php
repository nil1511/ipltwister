<?php
include 'config.php';
ob_start();
// Connect to server and select databse.
mysql_connect("$DBPATH", "$DBUSER", "$DBPASS")or die("cannot connect"); 
mysql_select_db("$DBNAME")or die("cannot select DB");

// Define $myusername and $mypassword 
$myusername=$_POST['user']; 
$mypassword=$_POST['pass'];

// To protect MySQL injection (more detail about MySQL injection)
$mypassword = md5($mypassword);
$myusername = stripslashes($myusername);
$mypassword = stripslashes($mypassword);
$myusername = mysql_real_escape_string($myusername);
$mypassword = mysql_real_escape_string($mypassword);

$sql="SELECT * FROM user WHERE username='$myusername' and pass='$mypassword'";
$result=mysql_query($sql);

// Mysql_num_row is counting table row
$count=mysql_num_rows($result);
// If result matched $myusername and $mypassword, table row must be 1 row

if($count==1){
// Register $myusername, $mypassword and redirect to file "login_success.php"
			$ip = getenv('REMOTE_ADDR');
			$current_date=gmdate("Y-m-d H:i:s");
		$id = mysql_fetch_object(mysql_query("SELECT ID FROM user WHERE username = '$myusername' and pass = '$mypassword'"))->ID;
		mysql_query("insert into userlog (USER_ID, last_login_date, ip) values ('$id', '$current_date', '$ip');");	

     // this sets session and logs user in  
       session_start();
	   session_regenerate_id (true); //prevent against session fixation attacks.

	   // this sets variables in the session 
		$_SESSION['user_id']= $id;  
		$_SESSION['user_name'] = $myusername;
		//$_SESSION['user_level'] = $user_level;
		$_SESSION['HTTP_USER_AGENT'] = md5($_SERVER['HTTP_USER_AGENT']);
		
		//update the timestamp and key for cookie
		$stamp = time();
		$ckey = GenKey();
		mysql_query("update userlog set `ctime`='$stamp', `ckey` = '$ckey' where USER_ID='$id'") or die(mysql_error());
		
		//set a cookie 
		
	   if(isset($_POST['remember'])){
				  setcookie("user_id", $_SESSION['user_id'], time()+60*60*24*COOKIE_TIME_OUT, "/");
				  setcookie("user_key", sha1($ckey), time()+60*60*24*COOKIE_TIME_OUT, "/");
				  setcookie("user_name",$_SESSION['user_name'], time()+60*60*24*COOKIE_TIME_OUT, "/");
				   }
		  header("Location: myaccount.php");
		 
}
else {
echo "Wrong Username or Password";
}

ob_end_flush();
?>

