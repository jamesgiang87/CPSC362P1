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
<title>location</title>
</head>
<h1>TABLE OF LOCATIONS</h1>
<body>
<table class="table table-striped table-bordered table-hover table-condensed">
<thead>

	<tr>
        <th>LOCATION NUMBER</th>
		<th>ITEM NUMBER</th>

	</tr>
</thead>
<tbody>
	<?php
		
		// establish connction 
		$con = mysqli_connect('127.0.0.1','root', '');
		
		// select database
		mysqli_select_db($con,'beyondshopper');
		
		// select from inventory table
		$sql = "SELECT * FROM location WHERE oc=1";
				
		$records = mysqli_query($con,$sql);

			// output all products currently in inventory
			while($row = mysqli_fetch_array($records)){
				echo "<tr>";
				echo "<td>".$row['loc']."</td>";
				echo "<td>".$row['itnum']."</td>";
				
			}
	?>
</table>




	
</body>
</html>

