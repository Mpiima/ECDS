
<!-- student delete modal -->
<div id="request_make" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 40%;"  >
<div class="modal-header">
<h3 id="myModalLabel"><center>ADDING A NEW USER</center></h3>
</div>
<div class="modal-body" >
<!-- <div class="alert alert-danger"> -->


<center>

<form id="add_user" class="form-signin" method="post">
<label>First name:</label>
<input type="text"   name="firstname" required>

<label>Last name:</label>
<input type="text"   name="lastname" required>
<label>Email Address:</label>
<input type="text"   name="email" required>

<label>User Type</label>
<?php 
$po=mysqli_query($connection,"SELECT * FROM tbl_position");

// $results =  mysqli_query($pos)
echo "<select class='form-control' name='usertype'  required='true'>";
echo "<option value=''>- select user type -</option>"; 
while($pos=mysqli_fetch_assoc($po)){
echo "<option value=$pos[position_id]>$pos[position_name]</option>";  
}
echo "</select>";
?>
<br><br>

<button class="btn btn-success" name="save"><i class="icon-save icon-large"></i> Submit </button>	

<button type="button" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">cancel</button>
<br>

 </div>
</form>	
</center>	



<script>
jQuery(document).ready(function($){
$("#add_user").submit(function(e){
e.preventDefault();
var _this = $(e.target);
var formData = $(this).serialize();
$.ajax({
type: "POST",
url: "save_user.php",
data: formData,
success: function(html){
$.jGrowl("A new User Is Successfully  Added", { header: 'User Added' });
window.location = 'user.php';  
}
});
});
});
</script>		





</div>
</div>
