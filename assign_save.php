<?php
include('dbcon.php');
include('session.php');
							
 error_reporting(0); 
 error_reporting(E_ERROR | E_WARNING | E_PARSE);
        $get_id;
		$date = date('d/m/y');
	     $session_id;
		$id = $_POST['r_id'];
		$id2 = $_POST['c_id'];
		$state = 1;
		$status = 0;
		$comment = $_POST['comment'];
		$expected_date=$_POST['expected_date'];
		 $to = $_POST['assign'];

     if (isset($_POST['adelete'])) {
     	 
     	 $go = mysqli_query($connection,"Update tbl_requests set  assigned_status = '0',completedby=NULL,upload=NULL,upload_status='0', status='-1',staff_assigned_id='-1',expected_date=NULL Where r_id = '$id2'")or die(mysqli_error());
     	 $del="Document hasbeen sucessfully deleted";
     	 $session_deleted = $_SESSION['$del'];

     	// $go = mysqli_query($connection,"Update tbl_requests set  assigned_status = '0',completedby=NULL,upload=NULL Where r_id = '$id2'")or die(mysqli_error());

     }else{

		$go = mysqli_query($connection,"Update tbl_requests set staff_assigned_id = '$to' ,assigned_on = '$date',assignedby = '$session_id',assigned_status = '$state',status = '$status',comment='$comment',expected_date='$expected_date'  Where r_id = '$id'")or die(mysqli_error());

}



//change/uploading a new document............................


?>

<script>
 window.location = "requests.php";
</script>  					
