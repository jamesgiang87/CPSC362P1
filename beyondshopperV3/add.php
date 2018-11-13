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
<title>Add Products</title>
<h1>Add Products</h1>
Fill out form and click SUBMIT:



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

<label id="first"> Buyprice:</label><br>
<input type="text" name="BUYPRICE"><br/>

<label id="first"> Sellprice:</label><br>
<input type="text" name="SELLPRICE"><br/>

<label id="first"> Markprice:</label><br>
<input type="text" name="MARKPRICE"><br/>

<button type="submit" name="save">SUBMIT</button>


</form>
<br>


</body>
</html>



<?php

		$con = mysqli_connect('127.0.0.1','root', '');
		
		mysqli_select_db($con,'beyondshopper');
		
		if(isset($_POST['save'])){
			
			$sql = "INSERT INTO inventory (BARC, NUM, NAME, TYPE, INFO,  BUYPRICE, SELLPRICE, MARKPRICE)
			VALUES ('".$_POST["BARC"]."','".$_POST["NUM"]."','".$_POST["NAME"]."','".$_POST["TYPE"]."','".$_POST["INFO"]."','".$_POST["BUYPRICE"]."','".$_POST["SELLPRICE"]."','".$_POST["MARKPRICE"]."')";
            
           
			
			$result = mysqli_query($con,$sql);
          
            
			
            
           /* $ini = "A1X11";
            $ad = "INSERT INTO location (loc, oc, itnum)
            VALUES ('$ini', 0, 'null')";
            mysqli_query($con,$ad);
            for ($num = 2; $num <= 720; $num += 1) {
                if ($ini[4] <3){
                    ++$ini;
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[3] <4){
                    $ini[4] = 1;
                    $ini[3] = $ini[3] +1 ;
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[2] == 'X'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'Y' ;
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[2] == 'Y'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'Z' ;
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[2] == 'Y'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'Z' ;
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[1] < 2){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'X';
                    $ini[1] = $ini[1] + 1;
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[0] == 'A'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'X';
                    $ini[1] = 1;
                    $ini[0] = 'B';
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[0] == 'B'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'X';
                    $ini[1] = 1;
                    $ini[0] = 'C';
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[0] == 'C'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'X';
                    $ini[1] = 1;
                    $ini[0] = 'D';
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[0] == 'D'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'X';
                    $ini[1] = 1;
                    $ini[0] = 'E';
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[0] == 'E'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'X';
                    $ini[1] = 1;
                    $ini[0] = 'F';
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[0] == 'F'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'X';
                    $ini[1] = 1;
                    $ini[0] = 'G';
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[0] == 'G'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'X';
                    $ini[1] = 1;
                    $ini[0] = 'H';
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[0] == 'H'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'X';
                    $ini[1] = 1;
                    $ini[0] = 'I';
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                else if($ini[0] == 'I'){
                    $ini[3] = 1;
                    $ini[4] = 1;
                    $ini[2] = 'X';
                    $ini[1] = 1;
                    $ini[0] = 'J';
                    $ad = "INSERT INTO location (loc, oc, itnum)
                    VALUES ('$ini', 0, 'null')";
                    mysqli_query($con,$ad);
                }
                
                
               
                    
                
                echo "$ini  \n";
            }*/
            
      
            
           
            
            if($result){
                $sql2 = " update location set oc = 1 , itnum = ".$_POST["NUM"]."   where oc = 0 order by loc limit 1";
                $result1 =  mysqli_query($con,$sql2);
                if($result1){
                    echo '<script language="javascript">';
                    echo 'alert("Item added.")';
                    echo '</script>';
                    echo '<script>window.location.href = "product.php";</script>';
                
                }
                else {
                    echo '<script language="javascript">';
                    echo 'alert("Item is not added to location!!!!!!")';
                    echo '</script>';
                    echo '<script>window.location.href = "product.php";</script>';
                    
                    
                }
            }
            else {
                echo '<script language="javascript">';
                echo 'alert("Item is not added!!!!!!")';
                echo '</script>';
                echo '<script>window.location.href = "product.php";</script>';
         
                
            }
            
            
		}
    

?>





