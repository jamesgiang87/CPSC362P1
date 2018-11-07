<html>
<body>
<title>Add Products</title>
<h1>Add Products</h1>
Fill out form and click SUBMIT:

<?php

		$con = mysqli_connect('127.0.0.1','root', '');
		
		mysqli_select_db($con,'beyondshopper');
		
		if(isset($_POST['save'])){
			
			$sql = "INSERT INTO inventory (BARC, NUM, NAME, TYPE, INFO, LOCATION, BUYPRICE, SELLPRICE, MARKPRICE)
			VALUES ('".$_POST["BARC"]."','".$_POST["NUM"]."','".$_POST["NAME"]."','".$_POST["TYPE"]."','".$_POST["INFO"]."','".$_POST["LOCATION"]."','".$_POST["BUYPRICE"]."','".$_POST["SELLPRICE"]."','".$_POST["MARKPRICE"]."')";
			
			$result = mysqli_query($con,$sql);
			echo "Item added.";
		}


?>



<form action="add.php" method="post">
<label id="first"> Barcode:</label><br>
<input type="text" name="BARC"><br/>

<label id="first"> Number:</label><br>
<input type="text" name="NUM"><br/>

<label id="first"> Name:</label><br>
<input type="text" name="NAME"><br/>

<label id="first"> Type:</label><br>
<input type="text" name="TYPE"><br/>

<label id="first"> Info:</label><br>
<input type="text" name="INFO"><br/>

<label id="first"> Location:</label><br>
<input type="text" name="LOCATION"><br/>

<label id="first"> Buyprice:</label><br>
<input type="text" name="BUYPRICE"><br/>

<label id="first"> Sellprice:</label><br>
<input type="text" name="SELLPRICE"><br/>

<label id="first"> Markprice:</label><br>
<input type="text" name="MARKPRICE"><br/>

<button type="submit" name="save">SUBMIT</button>

</form>
<br>
	<a href="product.php">Click Here To Return Inventory Page</a>

</body>
</html>