<?php
include 'config.php';
include 'header.php';
include 'footer.php';
include 'admin.php';
page_protect();
if (isset($_SESSION['user_id'])) {
	echo 'Welcome '.$_SESSION['user_name'];?>
<div class="myaccount">
  <p><strong>My Account</strong></p>
      <a href="select_team.php">SelectTeam </a>
    <a href="logout.php">Logout </a>
<? 
echo upComing_match();
//echo '<iframe src='.$link.' scrolling="auto" width=100% height=100% frameborder="0"> </iframe>';
//echo ' <link href="http://www.espncricinfo.com/rss/livescores.xml" rel="alternate" type="application/rss+xml" title="Cricinfo live scores RSS feed" />';
}
else 
echo 'Please login to view this page';?>