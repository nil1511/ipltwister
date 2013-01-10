<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<? require 'config.php'; 
include 'header.php';
include 'footer.php';?>
<title>IPL Twister</title>
</head>
<p> Logo Comes Here </p>
<table width="300" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
<tr>
<form name="login" method="post" action="checklogin.php">
<td>
<table width="100%" border="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF">
<tr>
<td colspan="3"><strong>Member Login </strong></td>
</tr>
<tr>
<td width="78">Username</td>
<td width="6">:</td>
<td width="294"><input name="user" type="text" id="myusername"></td>
</tr>
<tr>
<td>Password</td>
<td>:</td>
<td><input name="pass" type="password" id="mypassword"></td>
</tr>
<tr>
<td nowrap="nowrap">Remember Me</td>
<td><input type="checkbox" name="remember" /></td>
<td><input type="submit" name="Submit" value="Login"><input type="button" value="Register" onClick="location.href='register.php'" />
</td>
</tr>
</table>
</td>
</form>
</tr>
</table>



<!--<form action="login.php" style="text-align:right" method="post">
Username:
<input name="user" value=""/>
<br/>
Password:
<input name="pass" type="password" value="" />
<br/>
Remember Me
<input type="checkbox" name="rembme" />
<input type="submit" value="Submit" name="submit"/>
</form>
<a href="register.php" >Register</a>-->
<body>
</body>
</html>