<?php
include('dbcon.php');
include('session.php');
$usertype= $_POST['usertype'];
$fname = $_POST['firstname'];
$lname = $_POST['lastname'];
$email= $_POST['email'];

$uname = $fname.'.'.$lname;

$add = mysqli_query($connection,"insert into users (username,password,firstname,lastname,pos_id,email) values('$uname','12345','$fname','$lname','$usertype','$email')")or die(mysqli_error());

if ($add) {
	?>
<script type="text/javascript">
	window.alert("User hasbeen added successfully");
</script>
	<?php
}

?>