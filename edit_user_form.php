   <div class="row-fluid">
       <a href="users.php" class="btn btn-info"><i class="icon-plus-sign icon-large"></i> Add Staff</a>
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Edit Staff Details </div>
                            </div>
							<?php
							$query = mysqli_query($connection,"select * from users where user_id = '$get_id'")or die(mysql_error());
							$row = mysqli_fetch_array($query);
							?>
                            <div class="block-content collapse in">
                                <div class="span12">
								<form method="post">
										<div class="control-group">
                                          <div class="controls">
										  <label>position</label>
										  <select name="status" >
												<option><?php echo $row['position'];?></option>
												<option value ="administrator">Director</option>
                        <option value ="delegate">Delegate</option>
                        <option value ="support">Support_Staff</option>
											</select>
                                            
                                          </div>
                                        </div>
								
								
										<div class="control-group">
                                          <div class="controls">
                                            <input name="fname" value="<?php echo $row['firstname']; ?>" class="input focused" id="focusedInput" type="text" required>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
                                            <input name="lname" value="<?php echo $row['lastname']; ?>" class="input focused" id="focusedInput" type="text" required>
                                          </div>
                                        </div>

                                          <div class="control-group">
                                          <div class="controls">
                                            <input name="email" value="<?php echo $row['email']; ?>" class="input focused" id="focusedInput" type="text" required>
                                          </div>
                                        </div>

                                          <div class="control-group">
                                          <div class="controls">
                                            <input name="office" value="<?php echo $row['office']; ?>" class="input focused" id="focusedInput" type="text" required>
                                          </div>
                                        </div>
										
									
											<div class="control-group">
                                          <div class="controls">
												<button name="update" class="btn btn-success"><i class="icon-save icon-large"></i></button>

                                          </div>
                                        </div>
                                </form>
								</div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div><?php
if (isset($_POST['update'])){
$status= $_POST['status'];
$fname = $_POST['fname'];
$lname = $_POST['lname'];
$uname = $fname.'.'.$lname;
$email= $_POST['email'];
$office = $_POST['office'];

mysqli_query($connection,"update users set username = '$uname',firstname ='$fname', lastname='$lname',position='$status',email='$email',office='$office' where user_id = '$get_id' ")or die(mysql_error());
?>

<script>
window.location = "users.php";
</script>
<?php

}
?>