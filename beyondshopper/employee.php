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
<title>Employees</title>
</head>
<h1>Employees:</h1>
<body>
<table class="table table-striped table-bordered table-hover table-condensed">
<thead>

<tr>
<th>ID</th>
<th>LAST</th>
<th>FIRST</th>
<th>PHONE</th>
<th>EMAIL</th>


</tr>
</thead>
<tbody>
<?php
    
    // establish connction
    $con = mysqli_connect('127.0.0.1','root', '');
    
    // select database
    mysqli_select_db($con,'beyondshopper');
    
    $sql2 = "SELECT * FROM employees";
    $loca =mysqli_query($con,$sql2);
    
    
    // output all products currently in inventory
    while($row = mysqli_fetch_array($loca) ){
        
        
        
        echo "<tr>";
        echo "<td>".$row['EmployeeID']."</td>";
        echo "<td>".$row['Last']."</td>";
        echo "<td>".$row['Name']."</td>";
        echo "<td>".$row['Phone']."</td>";
        echo "<td>".$row['Email']."</td>";
        
        echo "<td><a href=deleteemployee.php?id=".$row['EmployeeID'].">DELETE</a></td>"; // delete product - links to 'delete.php'
    }
    ?>
</table>



<br>


<a href="addemployee.php"  >Add Employee</a>
<br>


</body>
</html>

