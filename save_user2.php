<?php
include('dbcon.php');
//include('session.php');
// $status= $_POST['status'];
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$email= $_POST['contact'];
$password=$_POST['password'];
$confirmpassword=$_POST['confirmpassword'];
 $uname = $fname.'.'.$lname;
 $position = "user";

// $fname = "cooll";
// $lname = "cooll";
// $email= "cooll";
// $password="cooll";
// $confirmpassword="cooll"; 
// // $office = $_POST['office'];
// $uname = $fname.'.'.$lname;
 if ($password != $confirmpassword) {
 	echo "password dont match, Try again";
 }else if($fname !="" && $lname != "" && $email !="" && $password != "" && $confirmpassword !="")
{
$insert = mysqli_query($connection,"insert into users (username,password,firstname,lastname,email,position) values('$uname','$password','$fname','$lname','$email','$position')")or die(mysqli_error());

// mysqli_query($connection,"insert into activity_log (date,username,action) values(NOW(),'$user_username','Add User $uname')")or die(mysqli_error());

if ($insert) {
	echo "You have successfully registered";
}else{
	echo "failed to register";
}

}else{
	echo "all fields are required";
}
?>