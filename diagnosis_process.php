
<?php
$get_id = $_GET['id'];
$query2 = mysqli_query($connection,"select * from users,record_tbl where users.user_id =record_tbl.patient_id and R_id = '$get_id'")or die(mysql_error());
$row2 = mysqli_fetch_array($query2);
$names = $row2['firstname']." ". $row2['lastname'];
?>


<div class="" style="font-size: 13px;">
<center>

<div>
<h2><b>Patient Name:</b>
<span ><u><?php echo $names; ?></u></span></h2>	
<hr><br>

<center><img width="170px;" src="<?php echo $row2['image']; ?>"></center><hr><br>
<form  class="form-signin" action="save_user_patient.php"  method="post"
style="padding-left: 20px;" >
<input style="" type="hidden" name="r_id" value="<?php echo $get_id; ?>">

<br><br>
<a href="records.php"  class="btn btn-danger">
<i class="icon-remove icon-large" style="color: white; "></i>Cancel 
</a>

<input class="btn btn-success"  type="submit" name="asave" value="Diagnose">
</form>
</div>
</center>
<br>


