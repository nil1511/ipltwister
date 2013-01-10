<?php
include 'config.php'; 
include 'header.php';
include 'footer.php';
$user = NULL;
$fname = NULL;
$lname = NULL;
$email = NULL;
$nick = NULL;
$DB = mysql_connect($DBPATH,$DBUSER,$DBPASS) or die(mysql_error());;
mysql_select_db($DBNAME,$DB);
function sendmail($uc,$email){
	        $to = $email;
            $subject = "Confirmation from IPL Twister to $user";
            $header = "DPL: Confirmation from DPL";
            $message = "Please click the link below to verify and activate your account. rn";
            $message .= "http://localhost/confirm.php?mail=$email&key=$us";

            $sentmail = mail($to,$subject,$message,$header);

            if($sentmail)
            {
            echo "Your Confirmation link Has Been Sent To Your Email Address.";
			return true;
            }
            else
            {
                echo "Cannot send Confirmation link to your e-mail address";
				return false;
            }
	}
function  checkEmail($mid){
  return preg_match('/^\S+@[\w\d.-]{2,}\.[\w]{2,6}$/iU', $mid) ? TRUE : FALSE;

}

function checkuser($unchk){
if( mysql_num_rows($r=mysql_query("SELECT * FROM `user` WHERE username = '".$unchk."' ;  ")) > 0 )
return false;
else
return true;
}
if(isset($_POST['sub']))
{
if (!empty($_REQUEST['name'])&&checkuser($_REQUEST['name']))
  $user = $_REQUEST['name'];
else if(!checkuser($_REQUEST['name'])) echo 'User With selected username already exist';
else
echo 'Enter Proper Name<br />';
	
if (!empty($_REQUEST['pass']))
  $pass = $_REQUEST['pass'];
else echo 'Enter Proper Password<br />';

if (!empty($_REQUEST['fname']))
  $fname = $_REQUEST['fname'];
else echo 'Enter Proper FirstName<br />';

if (!empty($_REQUEST['lname']))
  $lname = $_REQUEST['lname'];
else echo 'Enter Proper LastName<br />';

if (!empty($_REQUEST['email'])&& checkEmail($_REQUEST['email']))
  $email = $_REQUEST['email'];
else if(!checkEmail($_REQUEST['email']))
echo 'Not an Proper Email.<br />';
else
 echo 'Enter Proper Email<br />';

if (!empty($_REQUEST['nick']))
  $nick = $_REQUEST['nick'];
else echo 'Enter Proper Nick<br />';

if(!empty($_REQUEST['pass']))
 { $pass = $_REQUEST['pass'];
  	  
 $pass = md5($pass);}
 $uc = base64_encode($user);
$currentdate=gmdate("y-m-d H:i:s");
$ip = getenv('REMOTE_ADDR');
if(isset($user,$pass,$fname,$lname,$email,$nick))
{

$sql = "INSERT INTO  user(username , pass , email , first_name , last_name , nick , last_activity,ip,confirm_string) VALUES ( '$user' , '$pass' , '$email' , '$fname' , '$lname' ,'$nick' , '$currentdate','$ip','$uc' );";
mysql_query("INSERT INTO  user_data(username , coin) VALUES ('$user','1000');");
$done = mysql_query($sql);
if($done == 1){
	//if(sendmail($uc,$email));
	echo 'Your are successfully registered And Will Be Redirected to Main Page Click <a href="index.php">Here</a> if it does not';
//	$var = "IF NOT EXIST( SELECT username FROM user WHERE username='$user');";
	//echo mysql_query($var);
$user = $fname = $lname = $email = $nick = $pass = NULL;
header("Refresh: 1;url=index.php");
die();
}
else
	echo 'Something went wrong try again';
mysql_close($DB);
}}?>
<form method="post">
Username:
<input type="text" name="name" value="<? echo $user ?>" /><br/>
Password:
<input type="password" name="pass" value="" /><br />
Email(DA-IICT Email):
<input type="text" name="email" value="<? echo $email ?>" /><br />
FirstName:
<input type="text" name="fname" value="<? echo $fname ?>" /><br />

Lastname:
<input type="text" name="lname" value="<? echo $lname ?>" /><br />

Nick:
<input type="text" name="nick" value="<? echo $nick ?>" /><br />
<input type="submit" value="Submit" name="sub"/>
</form>