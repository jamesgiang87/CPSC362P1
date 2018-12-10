<?php
	$con = mysqli_connect('127.0.0.1','root','');
		
	mysqli_select_db($con,'beyondshopper');
	
	// delete product
	$sql = "DELETE FROM employees WHERE EmployeeID = '$_GET[id]'";
    $sq2 = "DELETE FROM users WHERE id = '$_GET[id]'";
 
				
    if( mysqli_query($con,$sql) && mysqli_query($con,$sq2)){
		
        echo '<script language="javascript">';
        echo 'alert("Employee deleted.")';
        echo '</script>';
        echo '<script>window.location.href = "employee.php";</script>';
        
        
    }
    
    else{
        echo '<script language="javascript">';
        echo 'alert("Error! Employee not deleted.")';
        echo '</script>';
        echo '<script>window.location.href = "employee.php";</script>';
    }
		
		
?>
