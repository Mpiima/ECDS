<?php
include('dbcon.php');
include('session.php');
							
 error_reporting(0); 
 error_reporting(E_ERROR | E_WARNING | E_PARSE);
         $get_id;
	    $session_id;
		 $id = $_POST['r_id'];
		 $status = "1";

if (isset($_POST['asave'])) {
     
		$go = mysqli_query($connection,"Update users set status = $status Where user_id = '$id'")or die(mysqli_error());


?>

<script>
 window.location = "user.php";
</script> 
<?php
}

?>
