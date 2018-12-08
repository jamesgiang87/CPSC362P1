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
<head>
<title>Inventory</title>
</head>
<h1>Inventory:</h1>
<body>
	
Search:
<form action="" method="post">
<input name="search" type="search" placeholder="Search All" autofocus><input type="submit" name="button">
<input type="button" value="Refresh" onclick="location='product.php'" />
</form></br>
Check Product Quantity:
<form action="" method="post">
<input name="sum" type="search" placeholder="Enter Barcode" autofocus><input type="submit" name="SumButton" onclick="location='sumQuantity.php'">
<input type="button" value="Refresh" onclick="location='product.php'" />
</form></br>	
	
<table class="table table-striped table-bordered table-hover table-condensed">
<thead>

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
</thead>
<tbody>
	<?php
		
		// establish connction 
		$con = mysqli_connect('127.0.0.1','root', '');
		
		// select database
		mysqli_select_db($con,'beyondshopper');
		
        $sql2 = "SELECT * FROM inventory, location WHERE num = itnum  ";
        $loca =mysqli_query($con,$sql2);
      

	
	
	        if(isset($_POST['SumButton'])){	
			$sum=$_POST['sum'];
			$data = "SELECT * FROM inventory WHERE BARC like '%{$sum}%'";
			$query=mysqli_query($con,$data);
			$numRows = mysqli_num_rows($query);
				echo '<h2>'."Barcode Entered: ".$sum;
				echo "<br>Quantity = ".$numRows.'</h2>';
		}
	  
		if(isset($_POST['button'])){    //trigger button click
			$search=$_POST['search'];
			$data = "SELECT * FROM inventory WHERE BARC like '%{$search}%' || NUM like '%{$search}%'
				|| NAME like '%{$search}%' || TYPE like '%{$search}%' || INFO like '%{$search}%' 
				|| loc like '%{$search}%' || BUYPRICE like '%{$search}%' || SELLPRICE like '%{$search}%' 
				|| MARKPRICE like '%{$search}%'";
			$query=mysqli_query($con,$data);
	
			// outputs results from search
			while($row = mysqli_fetch_array($query)){
				echo "<tr>";
				echo "<td>".$row['BARC']."</td>";
				echo "<td>".$row['NUM']."</td>";
				echo "<td>".$row['NAME']."</td>";
				echo "<td>".$row['TYPE']."</td>";
				echo "<td>".$row['INFO']."</td>";
				echo "<td>".$row['loc']."</td>";
				echo "<td>".$row['BUYPRICE']."</td>";
				echo "<td>".$row['SELLPRICE']."</td>";
				echo "<td>".$row['MARKPRICE']."</td>";
				echo "<td>".$row['QUANTITY']."</td>";
				echo "<td><a href=delete.php?id=".$row['BARC'].">DELETE</a></td>";
			}
		}

	
	
	
	
	else{
			// output all products currently in inventory
			while($row = mysqli_fetch_array($loca) ){
                                
				echo "<tr>";
				echo "<td>".$row['BARC']."</td>";
				echo "<td>".$row['NUM']."</td>";
				echo "<td>".$row['NAME']."</td>";
				echo "<td>".$row['TYPE']."</td>";
				echo "<td>".$row['INFO']."</td>";
                echo "<td>".$row['loc']."</td>";
				echo "<td>".$row['BUYPRICE']."</td>";
				echo "<td>".$row['SELLPRICE']."</td>";
				echo "<td>".$row['MARKPRICE']."</td>";
				echo "<td><a href=delete.php?id=".$row['BARC'].">DELETE</a></td>"; // delete product - links to 'delete.php'
			}
	}
	?>
</table>



		<br>


		<a href="add.php"  >Add Products</a>
		<br>

	
</body>
</html>

