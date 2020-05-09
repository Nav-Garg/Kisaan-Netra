<!DOCTYPE html>

<?php
if(isset($_POST['abc']))
{
	// Authorisation details.
	$username = "netkisaan@gmail.com";
	$hash = "1060b253f2c5b591515580a051218902548f57a321ab874eac6b2993b84dbf7c";
    $sender = "TXTLCL";
	// Config variables. Consult http://api.textlocal.in/docs for more info.
	$test = "0";

	// Data for text message. This is the text message data.
	// This is who the message appears to be from.
	$numbers = $_POST['num']; // A single number or a comma-seperated list of numbers
	$message = $_POST['mess'];
	// 612 chars or less
	// A single number or a comma-seperated list of numbers
	$message = urlencode($message);
	$data = "username=".$username."&hash=".$hash."&message=".$message."&sender=".$sender."&numbers=".$numbers."&test=".$test;
	$ch = curl_init('http://api.textlocal.in/send/?');
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$result = curl_exec($ch); // This is the result from the API
	curl_close($ch);
	echo($result);
}
?>

<html lang="en">

<style>

table, th, td {
    border: 1px solid black;
    background-color: white;
    text-align: justify;
    padding: 20px;
  	text-align: left;
  	width: 60%;
  	margin-left:20%; 
    margin-right:10%;
}
th, td:hover {background-color: #edf2ee;}
</style>

    <head>
    
        <meta charset="utf-8">
        <title>MESSAGE</title>
        <link href="style.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
    </head>
    <body>
    		
		<nav class="navtop">
			<div>	
				<h1><img src="../logo.png" alt="Cinque Terre" width="100" height="60" align="left">KISAAN - NETRA</h1>
				<a href="../home.php"><i class="fas fa-home"></i> Home</a>
				<a href="../profile.php"><i class="fas fa-user-circle"></i> Profile</a>
				<a href="../kn/tran.php"><i class="fas fa-language"></i><em> Translation Center</em></a>
                <a href="apismsphp.php"><i class="fas fa-envelope"></i><em> Send SMS</em></a>
                <a href="../logout.php"><i class="fas fa-sign-out-alt"></i> Logout</a>
                
			</div>
		</nav>
                
    <form method = "post" action = "apismsphp.php">
    <table align="center">
      	<tr>
        
    	<td> Username: </td>
    	<td> kisaannetra@gmail.com</td>
    	</tr>
    	<tr>
    	<td> Hash:</td>
    	<td>Added Successfully!</td>
    	</tr>
    	<tr>
    	<td> Sender:</td>
    	<td><input type="text" name="sender" placeholder="Enter your name"></td>
    	</tr>
    	<tr>
    	<td> Number:</td>
    	<td><input type="text" name="num" placeholder="Enter your number"></td>
    	</tr>
    	<tr>
    	<td> Message:</td>
    	<td><textarea name="mess" placeholder="Enter your message!"></textarea></td>
    	</tr>
    	<tr>
    	<td><?php echo($result);?> </td>
    	<td><input type = "submit" name = "abc" value="Send Message"></td>
        
    	</tr  >
