<!DOCTYPE html>
<html>

<head>
	<style>
		body {
			width: 450px;
			height: 300px;
			margin: 10px;
			float: left;
		}
		
		.height {
			height: 10px;
		}
	</style>
</head>

<body>
	<h1 style="color:green">GeeksforGeeks</h1>
	<b> PHP Unset session variables </b>
	<div class="height"> </div>
<?php
	
// start a new session
session_start();
		
// Check if the session name exists
if( isset($_SESSION['name']) ) {
	echo 'Session name is set.'.'<br>';
}
else {
	echo 'Please set the session name !'.'<br>';
}
echo'<br>';
$_SESSION['name'] = 'John';

//unset($_SESSION['name']);	
echo "Session Name : ".$_SESSION['name'].'<br>';
	
?>
</body>
</html>
