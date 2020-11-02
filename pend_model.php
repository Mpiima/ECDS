<!-- view pending details modal -->
<div id="<?php echo $pending_id;?>" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 60%">
<div class="modal-body" >

<?php
$get_id = $pending_id;
$query2 = mysqli_query($connection,"select username,f_name_requestor,l_name_requestor,comment, status ,topic,assigned_on,type_of_document, booktype ,requested_on from  tbl_requests,  users ,document where tbl_requests.staff_assigned_id = users.user_id and tbl_requests.type_of_document = document.bid and r_id = '$get_id'")or die(mysql_error());
$row2 = mysqli_fetch_array($query2);

$status1 = $row2['status'];
if($status1=='0'){
$status= "pending";
}elseif ($status1 == '-1') {
$status= "not assigned";
}
elseif($status1 == '1'){
$status='completed';
}
?>








<div class="" style="font-size: 16px; padding-left: 20px;">

<span><center>
 <h3 style="font-size: 19px; padding-top: 0px;">REQUESTS RE-ASSIGNMENT
 </h3></center></span>

<!-- <span  style="float: right;"> <strong style="color: white">
	<a href="#" class="btn btn-warning"><?php echo $status; ?></a></strong>
</span> -->




<div style="float: right; border-left: 1px solid lightgray; padding-right: 70px;">
	<form  class="form-signin" action="assign_save.php"  method="post"
	style="padding-left: 20px;" >
<!-- span 4 -->
    <label>Re-assign to:</label><br>
		<?php	
		$po=mysqli_query($connection,"SELECT * FROM users");
// $results =  mysqli_query($pos)
  echo "<select class='form-control' name='assign'  required='true'>";
  echo "<option value=''>-Select-</option>"; 
 while($pos=mysqli_fetch_assoc($po)){
      echo "<option value=$pos[user_id]>$pos[username]</option>";  
  }
  echo "</select>";
	?>

	 <br>

    <br>
    <label>Expected date:</label><br><input type="date" name="expected_date" placeholder="expected_date"><br>

    <label>Remarks</label><br>
    <textarea name="comment"  style="width: 200px; height: 100px;" >
    	
    </textarea>

    <input style="" type="hidden" name="r_id" value="<?php echo $get_id; ?>">

    <br><br>
<button style=" border:non; float: left;" class="btn btn-danger" data-dismiss="modal" aria-hidden="true">
<i class="icon-remove icon-large" style="color: white; "></i>Cancel 
</button>

<input class="btn btn-success" style="padding-right: 20px; float: right;" type="submit" name="asave" value="IT'S OK">

</form>
</div>





<div style="">

<table >
	<tr><td>Request made by:</td><td style="color: #000000">
<?php echo $row2['f_name_requestor']." ".$row2['l_name_requestor']; ?>
</td></tr>

<tr><td>Request made on:</td><td style="color: #000000">
<?php echo $row2['requested_on']; ?></td></tr>




<tr><td>Request was assigned to :</td><td style="color: #000000"> 
<?php echo $row2['username']; ?></td>
</tr>


<tr><td>Requested Document :</td><td style="color: #000000">
	<?php echo $row2['booktype']; ?>
</td></tr>


<tr><td>Request topic (in full)</td><td style="color: #000000">
<?php echo $row['topic']; ?></td></tr>



	<tr><td>Comment</td><td style="color: #000000">
	<?php echo $row2['comment']; ?>
   </td></tr></table>


</div>

<br>

</div>
</div>
