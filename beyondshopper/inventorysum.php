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

<h2>REPORTS</h2>








<table id="printTable" class="table  table-bordered " >
<tr>
<th>Number of sales</th>
<th>Sum of total costs of purchases</th>
<th>Sum of total sales</th>
<th>Sales net revenue</th>
</tr>

<?php
    // establish connction
    $con = mysqli_connect('127.0.0.1','root', '');
    
    // select database
    mysqli_select_db($con,'beyondshopper');
    $sql = "SELECT SUM(BUYPRICE) FROM sales";
    $sql1 = "SELECT SUM(SELLPRICE) FROM sales";
    $sql2 = "SELECT COUNT(SALES_NUM) FROM sales";
    
    $records = mysqli_query($con,$sql);
    $records1 = mysqli_query($con,$sql1);
    $records2 = mysqli_query($con,$sql2);
    $row = mysqli_fetch_array($records);
    $row1 = mysqli_fetch_array($records1);
    $row2 = mysqli_fetch_array($records2);
        
    $rev = $row1['0'] - $row['0'];
    echo "<tr>";
    
    echo "<td>".$row2['0']."</td>";
    echo "<td>".$row['0']."</td>";
    echo "<td>".$row1['0']."</td>";
    echo "<td>".$rev."</td>";
    echo "</tr>";
    
    ?>



<tr>
<th>Number of items</th>
<th>Sum of total item value</th>

</tr>

<?php
    // establish connction
    $con = mysqli_connect('127.0.0.1','root', '');
    
    // select database
    mysqli_select_db($con,'beyondshopper');
    $sql = "SELECT COUNT(NUM) FROM inventory";
    $sql1 = "SELECT SUM(BUYPRICE) FROM inventory";
    $sql2 = "SELECT COUNT(SALES_NUM) FROM sales";
    
    $records = mysqli_query($con,$sql);
    $records1 = mysqli_query($con,$sql1);
    $records2 = mysqli_query($con,$sql2);
    $row = mysqli_fetch_array($records);
    $row1 = mysqli_fetch_array($records1);
    $row2 = mysqli_fetch_array($records2);
    
    
    echo "<tr>";
    
    echo "<td>".$row['0']."</td>";
    echo "<td>".$row1['0']."</td>";
    
    echo "</tr>";
    
    ?>
</table>



<br>




<button >Print this page</button>
<script>
function printData()
{
    var divToPrint=document.getElementById("printTable");
    newWin= window.open("");
    newWin.document.write(divToPrint.outerHTML);
    newWin.print();
    newWin.close();
}

$('button').on('click',function(){
               printData();
               })
</script>


</body>
</html>
