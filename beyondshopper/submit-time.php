<?php

// Check if already clocked for specific request
$name = $_POST['name']?? '';

// Read which button user pressed
$TimeIN = $_POST['TimeIN-btn'] ?? '';
$TimeOUT = $_POST['TimeOUT-btn']?? '';
$LunchIN = $_POST['LunchIN-btn']?? '';
$LunchOUT = $_POST['LunchOUT-btn']?? '';

// Append string value from button user pressed
date_default_timezone_set('America/Los_Angeles');
$mode = $TimeIN . $TimeOUT . $LunchIN . $LunchOUT;
$time = date("Y-m-d H:i:s");
$date = date("Y-m-d");
$DayOfWeek = date("D");
$DayOfWeek = strtoupper($DayOfWeek);
$column = null;
$column = $DayOfWeek . $mode;

// Database Info
require_once ('dbconfig.php');

// Create connection
$conn = null;
$servername = null;
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}
$result = null;
$sql = "SELECT '" . $column . "' FROM timeclock WHERE Date='" . $date . "' AND Name='" . $name . "' ORDER BY Date ASC LIMIT 1";
$result = $conn->query($sql);
$row = null;
do {
	$field = $row[$column];
} while ($row = $result->fetch_assoc());


// Write to timeclock
$Days = 7;

$sql = "UPDATE beyondshopper.TimeClock SET `" . $column . "`='" . $time . "' WHERE Date > DATE_SUB( NOW(), INTERVAL " . $Days . " DAY) AND Name='" . $name . "'";
$result = mysqli_query($conn,$sql);

?>

<html>
<title></title>
<head></head>
<body>
	<br /><br />
	<script>window.location.href = "index.php";</script>
</body>
</html>
