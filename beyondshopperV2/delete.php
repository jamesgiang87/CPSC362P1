<?php
	$con = mysqli_connect('127.0.0.1','root','');
		
	mysqli_select_db($con,'beyondshopper');
	
	// delete product
	$sql = "DELETE FROM inventory WHERE BARC = '$_GET[id]'";
				
	if( mysqli_query($con,$sql))	
		header("refresh:1; url=product.php");	// if successful then refresh and go back to 'Delete Product' page
	else
		echo "Error! Item not deleted.";
		header("refresh:5; url=product.php");	// if unsuccessful then output error and refresh back to 'Delete Product' page
?>