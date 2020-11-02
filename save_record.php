<?php
include('dbcon.php');
include('session.php');
$patient= $_POST['patient_id'];
$status="0";

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
echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
} else {
echo "Sorry, there was an error uploading your file.";
}



$add = mysqli_query($connection,"insert into record_tbl (patient_id,status,image) values('$patient','$status','$target_file')")or die(mysqli_error());

if ($add) {
	?>
<script type="text/javascript">
	window.alert("A new Record hasbeen added successfully");
</script>
	<?php
}

?>