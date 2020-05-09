<?php
session_start();

$DATABASE_HOST = 'sql212.freecluster.eu';
$DATABASE_USER = 'epiz_25041824';
$DATABASE_PASS = 'XEXxRwaCxjJDO';
$DATABASE_NAME = 'epiz_25041824_test';
/*
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'accounts';
*/
// connecting the database using the info above.
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if ( mysqli_connect_errno() ) {
	// If there is an error with the connection, stop the script and display the error.
	die ('Failed to connect to MySQL: ' . mysqli_connect_error());
}

// Now we check if the data from the login form was submitted, isset() will check if the data exists.
if ( !isset($_POST['username'], $_POST['password']) ) {
	// Could not get the data that should have been sent.
	die ('Please fill both the username and password field!');
}
// Prepare our SQL, preparing the SQL statement will prevent SQL injection.
if ($stmt = $con->prepare('SELECT id, password, UserType FROM users WHERE username = ?')) {
	// Bind parameters (s = string, i = int, b = blob, etc), in our case the username is a string so we use "s"
	$stmt->bind_param('s', $_POST['username']);
	$stmt->execute();
	// Store the result so we can check if the account exists in the database.
	$stmt->store_result();
	
	if ($stmt->num_rows > 0) {
		$stmt->bind_result($id, $password, $UserType);
	$stmt->fetch();
	// Account exists, now we verify the password.
	// Note: We are using Hashed Password!
	
	if (password_verify($_POST['password'], $password) && $UserType == $_POST['UserType'] && $UserType == 'Admin') {
		// Verification success! User has loggedin!
		// Create sessions so we know the user is logged in, they basically act like cookies but remember the data on the server.
		session_regenerate_id();
		$_SESSION['loggedin'] = TRUE;
		$_SESSION['name'] = $_POST['username'];
		$_SESSION['id'] = $id;
		$_SESSION['UserType'] = $UserType;
		header('Location: home.php');
	} 

	elseif (password_verify($_POST['password'], $password) && $UserType == $_POST['UserType'] && $UserType == 'Expert: Weather') {
		// Verification success! User has loggedin!
		// Create sessions so we know the user is logged in, they basically act like cookies but remember the data on the server.
		session_regenerate_id();
		$_SESSION['loggedin'] = TRUE;
		$_SESSION['name'] = $_POST['username'];
		$_SESSION['id'] = $id;
		$_SESSION['UserType'] = $UserType;
		header('Location: homeExpert.php');
	} 

	elseif (password_verify($_POST['password'], $password) && $UserType == $_POST['UserType'] && $UserType == 'Expert: Stock') {
		// Verification success! User has loggedin!
		// Create sessions so we know the user is logged in, they basically act like cookies but remember the data on the server.
		session_regenerate_id();
		$_SESSION['loggedin'] = TRUE;
		$_SESSION['name'] = $_POST['username'];
		$_SESSION['id'] = $id;
		$_SESSION['UserType'] = $UserType;
		header('Location: homeExpertStock.php');
	} 

	elseif (password_verify($_POST['password'], $password) && $UserType == $_POST['UserType'] && $UserType == 'Expert: Consultant') {
		// Verification success! User has loggedin!
		// Create sessions so we know the user is logged in, they basically act like cookies but remember the data on the server.
		session_regenerate_id();
		$_SESSION['loggedin'] = TRUE;
		$_SESSION['name'] = $_POST['username'];
		$_SESSION['id'] = $id;
		$_SESSION['UserType'] = $UserType;
		header('Location: homeExpertConsultant.php');
	} 

	else {
		//$message = "Wrong Username or Password!";
		//echo "<script type='text/javascript'>alert('$message');</script>";
		echo "<script>
		alert('Wrong Username or Password!');
		window.location.href='index.html';
		</script>";
		//header('Location: index.html');
		//echo '<a href="index.html">Go Back!</a>';

	}
} else {
	
	//$message = "Wrong Username or Password!";
	//echo "<script type='text/javascript'>alert('$message');</script>";
	//echo '<a href="index.html">Go Back!</a>';
	echo "<script>
		alert('Wrong Username or Password!');
		window.location.href='index.html';
		</script>";
	//header('Location: index.html');
	
}

	$stmt->close();
}


?>