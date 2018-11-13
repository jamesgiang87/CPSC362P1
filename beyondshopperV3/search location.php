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
<h1>Search item location</h1>
<br/>
<form action="search location.php" method="post">
<label id="first"> item number:</label>
<input type="text" name="ITNUM"><br/>
<button type="submit" name="save">search</button>
<br/>

<html>
<head>
<title>location</title>

</head>
<br/>
<body>

	<?php
		
		// establish connction 
		$con = mysqli_connect('127.0.0.1','root', '');
		
		// select database
		mysqli_select_db($con,'beyondshopper');
        if(isset($_POST['save']) && $_POST["ITNUM"] != null){
		
		// select from inventory table
		$sql = "SELECT loc FROM location WHERE itnum =".$_POST["ITNUM"]."";
				
		$records = mysqli_query($con,$sql);
            
            
            

            $row = mysqli_fetch_array($records);
            if ($row[0] != NULL){
            
            echo '<script language="javascript">';
            echo 'alert("location is '.$row[0].' ")';
            echo '</script>';

            }
            else{
                echo '<script language="javascript">';
                echo 'alert("NOT FOUND")';
                echo '</script>';
            }
                
            
            
        }
	?>





	
</body>
</html>

