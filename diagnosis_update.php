<?php include('header.php'); ?>
<?php include('session.php'); ?>
<body  >

<?php include('sidebar/navbar.php'); ?>

<div class="container-fluid" style="width: 100%;" >
<div class="row-fluid">




<?php include('sidebar/diagnose_menu.php'); ?>
<div class="span9" id="" style="width: 86%;">
<div class="row-fluid">
<!-- block -->
<div  id="block_bg" class="block">
<?php
require_once 'dbcon.php';
$query= mysqli_query($connection,"select * from record_tbl")or die(mysqli_error());
$count = mysqli_num_rows($query);

?>
<div class="navbar navbar-inner block-header">
<div class="muted pull-left"><i class="icon-reorder icon-large"></i>Update Diagnosis</div>
<div class="muted pull-right"><a href="records.php"><i class="icon-arrow-left icon-large"></i> Back</a></div>

</div>
<div class="block-content collapse in">
<div class="span12" id="studentTable
Div">

<?php include('diagnosis_update_process.php'); ?>
</div>
</div>
</div>

</div>
</div>
</div>
<?php //include('footer.php'); ?> 
</div>
<?php include('script.php'); ?>
</body>	
</html>