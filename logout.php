<?php
include('dbcon.php');
include('session.php');
mysqlI_query($connection,"update user_log set logout_Date = NOW() where user_id = '$session_id' ")or die(mysql_error());
session_destroy();
header('location:index.php'); 
?>