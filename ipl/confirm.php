<?php
include'config.php';
 $key = $_GET['key'];
 $mid = $_GET['mail'];
 $sql = "UPDATE user SET confirm = 1 WHERE confirm_string='$key' and email='$email'";
 $result = mysql_query($sql) or die(mysql_error());
    if($result)
    {
        echo '<div>Your account is now active. You may now <a href="login.php">Log in</a></div>';
}
    else
    {
        echo "Some error occur.May Be Your Link  in Invalid";
    }
?>


?>