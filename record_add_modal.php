
<!-- student delete modal -->
<div id="request_make" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 40%;"  >
<div class="modal-header">
<h3 id="myModalLabel"><center>REGISTRATION OF NEW RECORD</center></h3>
</div>
<div class="modal-body" >
<!-- <div class="alert alert-danger"> -->

<center>

<form enctype="multipart/form-data" class="form-signin" method="post">

<?php 
$po=mysqli_query($connection,"SELECT * FROM users");

// $results =  mysqli_query($pos)
echo "<select class='form-control' name='patient_id'  required='true'>";
echo "<option value=''>- select patient  -</option>"; 
while($pos=mysqli_fetch_assoc($po)){
echo "<option value=$pos[user_id]>$pos[username]</option>";  
}
echo "</select>";
?>
<br><br>

<input type="file" name="fileToUpload" required id="fileToUpload" >


<br><br>

<button class="btn btn-success" name="save"><i class="icon-save icon-large"></i> Submit </button>	

<button type="button" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">cancel</button>
<br>

 </div>
</form>	
</center>	
</div>
</div>




<?php
include('dbcon.php');

if (isset($_POST['save'])) {
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
 "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
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
}
}
?>
