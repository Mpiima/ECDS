<?php include('header.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<body>
<?php include('sidebar/navbar.php'); ?>
<!-- <center><img src="images/casap.png"></center> -->
<div class="container-fluid">
<div class="row-fluid">
<?php include('sidebar/user_menu.php'); ?>
<div class="span9" id="">
<div class="row-fluid">
<!-- block -->
<div  id="block_bg" class="block">
<div class="navbar navbar-inner block-header">
<div class="muted pull-left"><i class="icon-pencil icon-large"></i> Edit User</div>
<div class="muted pull-right"><a href="user.php"><i class="icon-arrow-left icon-large"></i> Back</a></div>
</div>
<div class="block-content collapse in">
<?php
$query = mysqli_query($connection,"select * from  users,tbl_position where users.pos_id = tbl_position.position_id and user_id = '$get_id'")or die(mysql_error());
$row = mysqli_fetch_array($query);
?>
<form class="form-signin" method="post">
<div class="span4">


<label>First name:</label>
<input type="text" class="input-block-level"  name="firstname" 

value="<?php echo $row['firstname']; ?>" required>


<label>Last name:</label>
<input type="text" class="input-block-level"  name="lastname" 

value="<?php echo $row['lastname']; ?>" required>

<label>Email Address:</label>
<input type="text" class="input-block-level"  name="email" 

value="<?php echo $row['email']; ?>" required>


<label>User Type</label>
<?php 
$po=mysqli_query($connection,"SELECT * FROM tbl_position");

// $results =  mysqli_query($pos)
echo "<select class='form-control' name='usertype'  required='true'>";
echo "<option value=$row[position_id]>$row[position_name]</option>"; 
while($pos=mysqli_fetch_assoc($po)){
echo "<option value=$pos[position_id]>$pos[position_name]</option>";  
}
echo "</select>";
?>

<input type="text" name="post" value="<?php echo $_GET['id']; ?>">
<br>

<input  class="btn btn-success" name="asave" type="submit" value="submit">
<a class="btn btn-danger" href="user.php">Cancel</a>

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

$usertype=$_POST['usertype'];
$fname=$_POST['firstname'];
$lname=$_POST['lastname'];
$email = $_POST['email'];



$go = mysqli_query($connection,"Update users set firstname = '$fname', lastname='$lname',email ='$email', pos_id='$usertype' Where user_id = '$id'")or die(mysqli_error());

?>
<script>
window.location = "user.php";
</script> 
<?php 	
}


?>
</body>	
</html>