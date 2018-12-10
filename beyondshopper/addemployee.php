<?php
    $page_title = 'Home Page';
    require_once('includes/load.php');
    if (!$session->isUserLoggedIn(true)) { redirect('index.php', false);}
    ?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
<div class="col-md-12">
<?php echo display_msg($msg); ?>


<?php include_once('layouts/footer.php'); ?>
<div class="panel">

<html>
<body>
<title>Add Employee</title>
<h1>Add Employee</h1>
Fill out form and click SUBMIT:



<form action="addemployee.php" method="post">

<label id="first"> ID:</label><br>
<input type="text" name="ID"><br/>

<label id="first"> FName:</label><br>
<input type="text" name="FName"><br/>

<label id="first"> LName:</label><br>
<input type="text" name="LName"><br/>

<label id="first"> Email:</label><br>
<input type="text" name="Email"><br/>

<label id="first"> Phone:</label><br>
<input type="text" name="Phone"><br/>

<label id="first"> User:</label><br>
<input type="text" name="User"><br/>

<label id="first"> Pass:</label><br>
<input type="text" name="Pass"><br/>

<button type="submit" name="save">SUBMIT</button>


</form>
<br>


</body>
</html>



<?php

		$con = mysqli_connect('127.0.0.1','root', '');
		
		mysqli_select_db($con,'beyondshopper');
		
		if(isset($_POST['save'])){
			
			$sql = "INSERT INTO employees (Name,EmployeeID, Last, Email , Phone,  user, pass)
			VALUES ('".$_POST["FName"]."','".$_POST["ID"]."','".$_POST["LName"]."','".$_POST["Email"]."','".$_POST["Phone"]."','".$_POST["User"]."','".$_POST["Pass"]."')";
            
           
			
			$result = mysqli_query($con,$sql);
            
           
            
            
            if($result){
                $hashedpw = sha1($_POST['Pass']);
                $sql2 = " INSERT INTO users (id, name, username, password, user_level, image, status) VALUES ('".$_POST["ID"]."', 'Employee User', '".$_POST["User"]."','$hashedpw', '2', 'no_image.jpg', '1')";
                $result1 =  mysqli_query($con,$sql2);
                
                date_default_timezone_set('America/Los_Angeles');
                $time = date("Y-m-d H:i:s");
                $sql3 = "INSERT INTO timeclock (Date,Name) VALUES ('" . $time . "','".$_POST["FName"]."')";
                mysqli_query($con,$sql3);
                
                if($result1){
                    echo '<script language="javascript">';
                    echo 'alert("Employee added.")';
                    echo '</script>';
                    echo '<script>window.location.href = "employee.php";</script>';
                
                }
                else {
                    echo '<script language="javascript">';
                    echo 'alert("Employee is not added to users!!!!!!")';
                    echo '</script>';
                    echo '<script>window.location.href = "employee.php";</script>';
                    
                    
                }
            }
            else {
                echo '<script language="javascript">';
                echo 'alert("Employee is not added!!!!!!")';
                echo '</script>';
                echo '<script>window.location.href = "employee.php";</script>';
         
                
            }
            
            
		}
    

?>





