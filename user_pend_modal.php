<!-- view pending details modal -->
<div id="<?php echo $id;?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 40%">
<div class="modal-body" >

<?php
$get_id = $id;
$query2 = mysqli_query($connection,"select * from users where user_id = '$get_id'")or die(mysql_error());
$row2 = mysqli_fetch_array($query2);
$names = $row2['firstname']." ". $row2['lastname'];
?>


<div class="" style="font-size: 13px;">
<center>

<div>
<h2>Do you want to approve, 
<span style="color: black;"><?php echo $names; ?></span></h2>	
<form  class="form-signin" action="save_user_patient.php"  method="post"
style="padding-left: 20px;" >
<input style="" type="hidden" name="r_id" value="<?php echo $get_id; ?>">

<br><br>
<button  class="btn btn-danger" data-dismiss="modal" aria-hidden="true">
<i class="icon-remove icon-large" style="color: white; "></i>Cancel 
</button>

<input class="btn btn-success"  type="submit" name="asave" value="approve">
</form>
</div>
</center>
<br>

</div>
</div>
