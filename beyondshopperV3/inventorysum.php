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
<th>Sum of total costs of purchases</th>
</tr>
<?php
    // establish connction
    $con = mysqli_connect('127.0.0.1','root', '');
    
    // select database
    mysqli_select_db($con,'beyondshopper');
    $sql = "SELECT SUM(BUYPRICE) FROM inventory";
    
    $records = mysqli_query($con,$sql);
    while($row = mysqli_fetch_array($records)){
        
        
        echo "<tr>";
        echo "<td>".$row['0']."</td>";
        echo "</tr>";
    }
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
