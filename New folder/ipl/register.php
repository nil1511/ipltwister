
<body bgcolor="#353535" >
<?php
include ("header.php");



?>

<form method="post">
<center>

<img src="back3.png" style="position:absolute;left:100px;top:200px; height:57px; width:1000px;"/>


<img src="back3.png" style="position:absolute;left:100px;top:257px; height:57px; width:1000px;"/>


<img src="back3.png" style="position:absolute;left:100px;top:312px; height:57px; width:1000px;"/>

<img src="back3.png" style="position:absolute;left:100px;top:372px; height:57px; width:1000px;"/>


<img src="back3.png" style="position:absolute;left:100px;top:430px; height:57px; width:1000px;"/>

<img src="back3.png" style="position:absolute;left:100px;top:487px; height:57px; width:1000px;"/>

<table style="position:absolute;top:200px;left:100px;height:400px;" >

<tr><td width="300"><B><center>
Username:</td><td width="600"><center>
<input type="text" size="60" name="name" value="<? echo $user ?>" /></td></tr>

<tr><td><B><center>
Password:</td><td><center>
<input type="password"  size="60" name="pass" value="" /><br /></td></tr>

<tr><td><B><center>
Email:</td><td><center>
<input type="text"  size="60" name="email" value="<? echo $email ?>" /></td></tr>

<tr><td><B><center>
FirstName:</td><td><center>
<input type="text" size="60" name="fname" value="<? echo $fname ?>" /></td></tr>

<tr><td><B><center>
Lastname:</td><td><center>
<input type="text" size="60" name="lname" value="<? echo $lname ?>" /></td></tr>


<tr><td><B><center>
Nick:</td><td><center>	
<input type="text" size="60" name="nick" value="<? echo $nick ?>" /></td></tr>
<tr><td><center>..
<td></tr></table>
<div style="position:absolute;top:520px;left:400px;height:400px;" >
<img id="b" src="button.png" style="position:relative;top:45px;left:0px;" onMouseover="bu()" onMouseout="bu2()" onClick="bu3()" />
<div style="position:relative;top:0px;left:0px;" ><b><center>Submit</center></b></div>

</div>
</form>