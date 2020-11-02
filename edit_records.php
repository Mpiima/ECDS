<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<body>
<?php include('sidebar/navbar.php'); ?>
<!-- <center><img src="images/casap.png"></center> -->
<div class="container-fluid">
<div class="row-fluid">
<?php include('sidebar/editrecord_menu.php'); ?>
<div class="span9" id="">
<div class="row-fluid">
<!-- block -->
<div  id="block_bg" class="block">
<div class="navbar navbar-inner block-header">
<div class="muted pull-left"><i class="icon-pencil icon-large"></i> Edit Record</div>
<div class="muted pull-right"><a href="user.php"><i class="icon-arrow-left icon-large"></i> Back</a></div>
</div>
<div class="block-content collapse in">
<?php
$query = mysqli_query($connection,"select * from  users,record_tbl where users.user_id = record_tbl.patient_id and R_id = '$get_id'")or die(mysql_error());
$row = mysqli_fetch_array($query);
?>
<center>


<form class="form-signin" method="post" enctype="multipart/form-data">
<table width="60%">
	<tr><td style="float: right; padding-right: 20px;">Patient</td><td>
<?php
$po=mysqli_query($connection,"SELECT * FROM users");

// $results =  mysqli_query($pos)
echo "<select class='form-control' name='patient'  required='true'>";
echo "<option value=$row[user_id]>$row[username]</option>"; 
while($pos=mysqli_fetch_assoc($po)){
echo "<option value=$pos[user_id]>$pos[username]</option>";  
}
echo "</select>";
?></td></tr>

<tr><td style="float: right; padding-right: 20px;"><img width="270px;" src="<?php echo $row['image']; ?>"></td><td>
<input type="file" name="fileToUpload" required id="fileToUpload" >

<input type="hidden" name="post" value="<?php echo $_GET['id']; ?>">
</td></tr>


<tr><td style="float: right;">
<input  class="btn btn-success" name="asave" type="submit" value="Update">
</td><td>
<a class="btn btn-danger" href="user.php">Cancel</a>
</td></tr></table>
</div></form>

<script>

function check(elem) {
document.getElementById('mySelect1').disabled = !elem.selectedIndex;
}
</script>
</div></div></form>			
</div>			
</div>
</div>
<!-- /block -->
</div>
</div>
</div>
<?php include('footer.php'); ?>
</div>
<?php include('script.php'); ?>








<?php
include('dbcon.php');
if (isset($_POST['asave'])) {
echo $id = $_POST['post'];

$patient=$_POST['patient'];
$status = "0";


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



$go = mysqli_query($connection,"Update record_tbl set patient_id = '$patient', status='$status', image='$target_file' Where R_id = '$id'")or die(mysqli_error());

?>
<script>
window.location = "records.php";
</script> 
<?php 	
}
}

?>
</body>	
</html>