<html>
<head>
<title>Change Password </title>

</head>



<form action = "changepassword.php" method = "post">
Current Password:<br>
<input type = "text" name = "current_pw"> <br>
New Password:<br>
<input type = "text" name = "new_pw"> <br>
Retype New Password:<br>
<input type = "text" name = "retyped_pw"> <br>
<input type = "submit" name = "submit" value = "Submit">
</form>

<?php
			
			if(isset($_POST['submit']))
			{
				
					//see if new pw is the same as retryped pw
				if ($_POST['new_pw'] != $_POST['retyped_pw'])
				{
					echo "Passwords are not the same";	
				}
			
				else 
				{
					$con = mysqli_connect('127.0.0.1','root', '');
		
					mysqli_select_db($con,'beyondshopper');
		
					require_once('includes/load.php');
		
					//$_SESSION['user_id']; is the usder if the account is signed on
				
					$sql = "SELECT `password` FROM `users` 
					WHERE `id` = '{$_SESSION['user_id']}'";
				
					$result = mysqli_query($con,$sql);
					
					
					if (!$result)
					{
						echo "Database query failed";
						
					}
					else
					{
						$row = mysqli_fetch_array($result); //should just be one because one user id
						//pw does not match up with pw
						
						if ( $row['password'] != sha1($_POST['current_pw']) ) //Need shal1 because its the cyptograph that the example used 
						{
							echo "Current pw does not match pw in database";
						}
						else
						{
							$new_pw = sha1($_POST['new_pw']);
							//echo $new_pw;
							$sql = "UPDATE `users` SET `password` = '{$new_pw}' WHERE `id` = '{$_SESSION['user_id']}'" ;
							$result = mysqli_query($con,$sql);
							echo "Password updated";
						}
					}
				}
				
				
			}
		
?>


<br>
	<a href="home.php">Click Here To Return Home Page</a>


</html>