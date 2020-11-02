<?php
		require_once 'dbcon.php';
		
		$email = $_POST['email'];
		$password = $_POST['password'];
		/* student */
		$query = "SELECT * FROM users WHERE email='$email' AND password='$password'";
		$result = mysqli_query($connection,$query);
		$row = mysqli_fetch_array($result);
		$num_row = mysqli_num_rows($result);
		$pass=$row['password'];
		$status =$row['position'];

		
		if( $num_row > 0 ) { 
		//session_start();
		$_SESSION['id']=$row['user_id'];
		$_SESSION['email_id']=$row['email'];
		echo "Your have successfully logged in";
		
	}else{
			echo "Invalid login, Try Again";
		}	
		?>