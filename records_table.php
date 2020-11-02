
	<?php include('dbcon.php'); 

	if(isset($_GET['delete_id']))
	{
	$sql_query=mysqli_query($connection,"DELETE FROM record_tbl WHERE R_id =".$_GET['delete_id']);
	}

	?>



	<!-- //delete request  -->
	<script type="text/javascript">
	function delete_id(id)
	{
	if(confirm('Are you sure you want to Delete this request ?'))
	{
	window.location.href='records.php?delete_id='+id;
	}
	}
	</script>
	<!-- end of delete request -->




	<table cellpadding="0" cellspacing="0" border="0" class="table" id="example" width="100%" style="border:none;">
	<div>
	<form action="save_request.php" method="post">
	<a data-toggle="modal" href="#request_make" id="make"  class="btn btn-inverse" name=""><i class="icon-plus-sign icon-large"></i> Register New Record</a></form>
	<?php include('record_add_modal.php'); ?>

	</div>
	<thead>
	<tr>
	<th>Patient Name</th>
	<th>Registered_on</th>
	<th>Attached Image</th>
	<th>Status</th>
	<th class="empty"></th>
	</tr>
	</thead>

	<tbody>
	<tr>
	<?php

	$query = mysqli_query($connection,"select * From  users,record_tbl where users.user_id = record_tbl.patient_id ")or die(mysql_error());


	while($row = mysqli_fetch_array($query)){
	$id = $row['R_id'];
	$fname =$row['firstname'];
	$lname = $row['lastname'];
	$patient = $fname." ".$lname;
	$recorded_date = $row['record_date'];
	$status =  $row['status'];
	$image = $row['image'];

	?>

	<td><?php echo $patient ?></td> 
	<td><?php echo $recorded_date; ?></td> 
	<td><img width="170px;" src="<?php echo $image; ?>"></td> 
	<td>
	<?php 
	$status1 = $row['status'];
	if($status1=='0'){
	$status= "pending";
	}
	elseif($status1=='1'){
	$status='diagonised';
	}
	?>


	<span style="color: red">
	<?php
	if ($status == 'pending') {
      echo $status; 
	?></span>
	|<a style="width: 100%;" href="diagnose.php<?php echo '?id='.$id; ?>"   name="">
	<span style="color: red;"><u>click here to diagonise</u></span>
	</a>
	<?php //include('diagnosis_modal.php'); ?>
	</i></a>

	<?php
	# code...
	}elseif($status == 'diagonised'){ 
	$cid = $id;
	?>
	<span style="color: darkgreen">
	<?php 
	echo $status;
	?></span>
	<a title="click to view results"  data-toggle="modal" href="#<?php echo $cid; ?>" id="#<?php echo $cid; ?>"  name=""> 
	<span style="color: darkgreen"></b></span>| <i class="icon-save "></i>view results </a> | <a  title="Click to update diagnosis results"  href="diagnosis_update.php<?php echo '?id='.$id; ?>" ><i class="icon-pencil "></i>update </a>
	<?php //include('complete_case_modal.php'); ?>

	<?php }
	?>
	</span>
	</td> 

	<td class="empty" width="290">
	<a  title="Click to Edit User"  href="edit_records.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil "></i>edit record </a>





	<script type="text/javascript">
	$(document).ready(function(){
	$('#edit<?php echo $id; ?>').tooltip('show');
	$('#edit<?php echo $id; ?>').tooltip('hide');
	});
	</script>


	<a href="javascript:delete_id('<?php echo $id; ?>')"   class="btn btn-danger" ><i class="icon-trash icon-large"></i> delete</a>



	</td>

	</tr>
	<?php } ?>

	</tbody>



	</table>





	<style type="text/css">
	.iframe-container {    
	padding-bottom: 60%;
	padding-top: 30px; height: 0; overflow: hidden;
	}

	.iframe-container iframe,
	.iframe-container object,
	.iframe-container embed {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	}
	</style>

	<script type="text/javascript">
	/*
	* This is the plugin
	*/
	(function(a){a.createModal=function(b){defaults={title:"",message:"Your Message Goes Here!",closeButton:true,scrollable:false};var b=a.extend({},defaults,b);var c=(b.scrollable===false)?'style="max-height:900px; overflow-y: au;"':"";html='<div class="modal fade" id="myModal" style="width:800px; height:500px;">';html+='<div class="modal-dialog" >';html+='<div class="modal-content">';html+='<div class="modal-body" '+c+">";html+=b.message;html+="</div>";html+='<div class="modal-footer" style="height:20px;">';if(b.closeButton===true){html+='<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>'}html+="</div>";html+="</div>";html+="</div>";html+="</div>";a("body").prepend(html);a("#myModal").modal().on("hidden.bs.modal",function(){a(this).remove()})}})(jQuery);

	/*
	* Here is how you use it
	*/
	$(function(){    
	$('.view-pdf').on('click',function(){
	var pdf_link = $(this).attr('href');
	var iframe = '<div class="iframe-container" ><iframe style="width:px;" src="'+pdf_link+'"></iframe></div>'
	$.createModal({
	title:'',
	message: iframe,
	closeButton:true,
	scrollable:true
	});
	return false;        
	});    
	})
	</script>
	</form>


