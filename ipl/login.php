<? require 'config.php'; 
include 'header.php';
include 'footer.php';
?>
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
<td><input name="pass" type="text" id="mypassword"></td>
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
