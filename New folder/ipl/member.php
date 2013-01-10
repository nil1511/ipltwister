
<?php
include ("header.php");
?>
<body bgcolor="#353535" >


<table width="300" border="0" align="center" cellpadding="0" cellspacing="1"  style="position:absolute;left:0px;width:387px;height:300px; " >
<tr>
<form name="login" method="post" action="checklogin.php">
<td>
<table width="100%" border="0" celxlpadding="3" cellspacing="1"
 style="position:absolute;width:387px;height:300px; " background="Dock.png">

<tr>
<td>
  <div align="left"></div>
  <div style="position:relative;top:70px;left:0px;"  ><H2><center>Create Team</center></div>
<img id="b" style="width:300;height:80px;" src="button.png" onMouseover="bu(b)" onMouseout="bu2(b)" onClick="bb()" />
</td>.</tr><tr>
<td>
<div style="position:relative;top:70px;left:0px;font-size:16px;" ><H2><center>Ranking</center></B></div>
<img id="e" style="width:300;height:80px;" src="button.png" onMouseOver="bu(e)" onMouseout="bu2(e)" onClick="be()" />
</td>
</tr>
<tr>
<td>
<div style="position:relative;top:70px;left:0px;" ><H2><center>Schedule</center></B></div>
<img id="f" style="width:300;height:80px;" src="button.png" onMouseOver="bu(f)" onMouseout="bu2(f)" onClick="bf()" />
</td>
</tr>
<tr>
<td>
<div style="position:relative;top:70px;left:0px;" ><H2><center>My Account</center></B></div>
<img id="g" style="width:300;height:80px;" src="button.png" onMouseOver="bu(g)" onMouseout="bu2(g)" onClick="bg()" />
</td>
</tr>
</table>
<td>
<iframe style="position:absolute;width:1100px;height:800px;top:200px;left:400px;" id="iif" src="login.php"></iframe>
</form></td></tr>
</table>
<script  type="text/javascript" language="javascript">
function bu(s){s.src="button2.png";}
function bu2(s){s.src="button.png";}
function bb(){iif.src="select_team.php";}
function be(){iif.src="ranking.php";}
function bf(){iif.src="schedule.php";}
function bg(){}


</script>
</font></body>