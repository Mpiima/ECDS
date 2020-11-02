
<?php include('dbcon.php'); 

if(isset($_GET['delete_id']))
{
$sql_query=mysqli_query($connection,"DELETE FROM users WHERE user_id =".$_GET['delete_id']);
}

?>


    
<!-- //delete request  -->
<script type="text/javascript">
      function delete_id(id)
      {
        if(confirm('Are you sure you want to Delete this request ?'))
        {
          window.location.href='user.php?delete_id='+id;
        }
      }
 </script>
 <!-- end of delete request -->




<table cellpadding="0" cellspacing="0" border="0" class="table" id="example" width="100%" style="border:none;">
<div>
<form action="save_request.php" method="post">
<a data-toggle="modal" href="#request_make" id="make"  class="btn btn-inverse" name=""><i class="icon-plus-sign icon-large"></i> ADD USER</a></form>
<?php include('user_add_modal.php'); ?>

</div>
<thead>
<tr>
<th>Name</th>
<th>Email</th>
<th>User Type</th>
<th>Status</th>
<th class="empty"></th>
</tr>
</thead>

<tbody>
<tr>
<?php
// $query = mysqli_query($connection,"select * from case_table,court_tbl,users where
// case_table.Court_id = court_tbl.court_id and users.user_id = case_table.Assigned_to ")or die(mysql_error());

$query = mysqli_query($connection,"select * From  users,tbl_position where users.pos_id = tbl_position.position_id ")or die(mysql_error());


while($row = mysqli_fetch_array($query)){
$id = $row['user_id'];
$fname =$row['firstname'];
$lname = $row['lastname'];
$names = $fname." ".$lname;
$email = $row['email'];
$status =  $row['status'];
$usertype = $row['position_name'];

?>

<td><?php echo $names ?></td> 
<td><?php echo $email; ?></td> 
<td><?php echo $usertype; ?></td> 
<td>
<?php 
$status1 = $row['status'];
if($status1=='0'){
$status= "pending";
}
elseif($status1=='1'){
$status='Approved';
}
?>


<span style="color: darkred">
<?php
if ($status == 'pending') {

?>
<a style="width: 100%;" data-toggle="modal" href="#<?php echo $id; ?>" id="#<?php echo $id; ?>"  name="">
 <span style="color: red;"><u><?php //echo $status; ?>Approve</u></span>
</a>
<?php include('user_pend_modal.php'); ?>
</i></a>

<?php
# code...
}elseif($status == 'Approved'){ 
$cid = $id;
?>
<a title="Approved "  data-toggle="modal" href="#<?php echo $cid; ?>" id="#<?php echo $cid; ?>"  name=""> 
	<?php 
echo $status;

?></a>
<?php// include('complete_case_modal.php'); ?>

<?php }
?>
</span>
</td> 

<td class="empty" width="290">
<a  title="Click to Edit User" id="edit<?php echo $id; ?>" href="edit_users.php<?php echo '?id='.$id; ?>" class="btn btn-success"><i class="icon-pencil "></i>Edit </a>





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


