<html>
<head>
<title>Inventory</title>
</head>
<h1>Inventory:</h1>
<body>
<table border=2 cellpadding=2 cellspacing=2>
	<tr>
		<th>BARCODE</th>
		<th>NUMBER</th>
		<th>NAME</th>
		<th>TYPE</th>
		<th>INFO</th>
		<th>LOCATION</th>
		<th>BUYPRICE</th>
		<th>SELLPRICE</th>
		<th>MARKPRICE</th>
	</tr>
	<?php
		
		// establish connction 
		$con = mysqli_connect('127.0.0.1','root', '');
		
		// select database
		mysqli_select_db($con,'beyondshopper');
		
		// select from inventory table
		$sql = "SELECT * FROM inventory";
				
		$records = mysqli_query($con,$sql);

			// output all products currently in inventory
			while($row = mysqli_fetch_array($records)){
				echo "<tr>";
				echo "<td>".$row['BARC']."</td>";
				echo "<td>".$row['NUM']."</td>";
				echo "<td>".$row['NAME']."</td>";
				echo "<td>".$row['TYPE']."</td>";
				echo "<td>".$row['INFO']."</td>";
				echo "<td>".$row['LOCATION']."</td>";
				echo "<td>".$row['BUYPRICE']."</td>";
				echo "<td>".$row['SELLPRICE']."</td>";
				echo "<td>".$row['MARKPRICE']."</td>";
				echo "<td><a href=delete.php?id=".$row['BARC'].">DELETE</a></td>"; // delete product - links to 'delete.php'
			}
	?>
</table>
		<br>
		<a href="add.php">Click Here To Add Products</a>
		<br>
		<a href="home.php">Click Here To Return To Home</a>
	
</body>
</html>