<?php include('header.php'); ?>
<?php include('session.php'); ?>
<body>
<?php include('sidebar/navbar.php'); ?>

<div class="container-fluid">
<div class="row-fluid">
<?php include('sidebar/sidebar_users.php'); ?>
<div class="span3" id="">
<?php  include('add_user.php');  ?>		   			
</div>
<div class="span6" id="">
<div class="row-fluid">
<!-- block -->
<div id="block_bg" class="block">
<div class="navbar navbar-inner block-header">
<?php 
$query = mysqli_query($connection,"select * from users")or die(mysqli_error());
$count = mysqli_num_rows($query);
?>
<div class="muted pull-left"><i class="icon-reorder icon-large"></i> Users List</div>
<div class="muted pull-right">
Number of  Authorised Users/staff: <span class="badge badge-info"><?php echo $count; ?></span>
</div>
</div>
<div class="block-content collapse in">
<div class="span12">
<form action="delete_user.php" method="post">
<table width="100%" border="true" class="table" id="example">
<a data-placement="right" title="Click to Delete check item" data-toggle="modal" href="#user_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i> Delete</a>
<script type="text/javascript">
$(document).ready(function(){
$('#delete').tooltip('show');
$('#delete').tooltip('hide');
});
</script>
<?php include('modal_delete.php'); ?>
<thead >
<tr bgcolor="black" style="color: white">
<th></th>
<th>Username</th>

<th >Position</th>
<th >Email</th>

<th >Office_no</th>

<th></th>

</tr>
</thead>
<tbody>
<?php
$user_query1 = mysqli_query($connection,"select * from users")or die(mysqli_error());
while($row = mysqli_fetch_array($user_query1)){
$id = $row['user_id'];
?>
<tr>
<td width="30">
<input id="optionsCheckbox" class="uniform_on" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
</td>

<td><?php echo $row['firstname'].' '.$row['lastname']; ?></td>

<td><?php echo $row['position']; ?></td>

<td><?php echo $row['email'] ?></td>
<td><?php echo $row['office']; ?></td>



<td width="80">
<a data-placement="left" id="edit<?php echo $id; ?>" title="Click to Edit" href="edit_user.php<?php echo '?id='.$id; ?>"  data-toggle="modal" class="btn btn-success"><i class="icon-pencil icon-large"></i> Edit</a>
<script type="text/javascript">
$(document).ready(function(){
$('#edit<?php echo $id; ?>').tooltip('show');
$('#edit<?php echo $id; ?>').tooltip('hide');
});
</script>
</td>


</tr>
<?php } ?>
</tbody>
</table>
</form>
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
</body>

</html>