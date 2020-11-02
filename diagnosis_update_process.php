
<?php
$get_id = $_GET['id'];
$query2 = mysqli_query($connection,"select * from users,record_tbl,diagnosis_tbl where users.user_id =diagnosis_tbl.patient_ID and users.user_id = record_tbl.patient_id   and R_id = '$get_id'")or die(mysql_error());
$row2 = mysqli_fetch_array($query2);
$names = $row2['firstname']." ". $row2['lastname'];
$result = $row2['diagnosis_result'];
?>


<div class="" style="font-size: 13px;">
<center>

<div>
<table width="100%">
 <tr><td>
<h4><b>Patient Name:</b>
<span ><u><?php echo $names; ?></u></span></h4>	

<h4><b>Recent Diagnosis Result:</b>
<span ><u><?php echo $result; ?></u></span></h4>

<h4><b>Diagnosed on:</b>
<span ><u><?php echo $row2['date_of_diagnosis']; ?></u></span></h4>




<center><img width="170px;" src="<?php echo $row2['image']; ?>"><br><br><br>

<a href="#">click here to diagnose</a></center><hr>



</td><td>
<form  class="form-signin" action="diagnosis_update.php"  method="post"
style="padding-left: 20px;" enctype="multipart/form-data">
<input style="" type="hidden" name="post" value="<?php echo $get_id; ?>">
<input style="" type="hidden" name="pid" value="<?php echo $row2['patient_id']; ?>">
<input type="file" name="fileToUpload" required id="fileToUpload">
<br><br>
<a href="records.php"  class="btn btn-danger" >
<i class="icon-remove icon-large" style="color: white; "></i>Cancel 
</a>

<input class="btn btn-success"  type="submit" name="asave" value="update">
</form>
</td></tr></table>
</div>
</center>
<br>



<?php
include('dbcon.php');
if (isset($_POST['asave'])) {
echo $id = $_POST['post'];



$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

// Check file size
if ($_FILES["fileToUpload"]["size"] > 80000000) {
echo "Sorry, your file is too large.";
$uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
 "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
} else {
echo "Sorry, there was an error uploading your file.";
}


$patient = $_POST['pid'];
$status = "0";
$go = mysqli_query($connection,"Update record_tbl set patient_id = '$patient', image='$target_file',status='$status' Where R_id = '$id'")or die(mysqli_error());

$results = "no record";
$pid = $_POST['pid'];

$do = mysqli_query($connection,"Update diagnosis_tbl set diagnosis_result = '$results' Where patient_ID = '$pid'")or die(mysqli_error());

?>
<script>
window.location = "records.php";
</script> 
<?php 	
}
}

?>

