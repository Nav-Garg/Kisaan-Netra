<?php
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
// Try and connect using the info above.
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if (mysqli_connect_errno()) {
	// If there is an error with the connection, stop the script and display the error.
	die ('Failed to connect to MySQL: ' . mysqli_connect_error());
}

// Now we check if the data was submitted, isset() function will check if the data exists.
if (!isset($_POST['username'], $_POST['password'], $_POST['email'], $_POST['State'])) {
	// Could not get the data that should have been sent.
	echo "<script>
		alert('Please complete the registration form!');
		window.location.href='register.html';
		</script>";
}
// Make sure the submitted registration values are not empty.
if (empty($_POST['username']) || empty($_POST['password']) || empty($_POST['email']) || empty($_POST['State'])) {
	// One or more values are empty.
    echo "<script>
		alert('Please complete the registration form');
		window.location.href='register.html';
		</script>";
	
}

if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
	echo "<script>
		alert('Email is not valid!');
		window.location.href='register.html';
		</script>";
}

if (preg_match('/[A-Za-z0-9]+/', $_POST['username']) == 0) {
    echo "<script>
		alert('Username is not valid!');
		window.location.href='register.html';
		</script>";
    
}

if (strlen($_POST['password']) > 20 || strlen($_POST['password']) < 5) {
	echo "<script>
		alert('Password must be between 5 and 20 characters long!');
		window.location.href='register.html';
		</script>";
	
}
if ($stmt = $con->prepare('SELECT id, password, UserType, State, email FROM users WHERE email = ?')) {
	// Bind parameters (s = string, i = int, b = blob, etc), hash the password using the PHP password_hash function.
	$stmt->bind_param('s', $_POST['email']);
	$stmt->execute();
	$stmt->store_result();
	
	if ($stmt->num_rows > 0) {
		//echo 'Email exists, please choose another!'; 
        echo "<script>
		alert('Email exists, please choose another!');
		window.location.href='register.html';
		</script>";
	}
}
// We need to check if the account with that username exists.
if ($stmt = $con->prepare('SELECT id, password, UserType, State, email FROM users WHERE Username = ?')) {
	// Bind parameters (s = string, i = int, b = blob, etc), hash the password using the PHP password_hash function.
	/*$stmt->bind_param('s', $_POST['email']);
	$stmt->execute();
	$stmt->store_result();
	
	if ($stmt->num_rows > 0) {
		echo 'Email exists, please choose another!'; 
        echo '<a href="register.html">Go Back!</a>';
	}
*/

	$stmt->bind_param('s', $_POST['username']);
	$stmt->execute();
	$stmt->store_result();
	// Store the result so we can check if the account exists in the database.
	if ($stmt->num_rows > 0) {
		// Username already exists
		
        echo "<script>
		alert('Username exists, please choose another!');
		window.location.href='register.html';
		</script>";
	} 


	else {
		// Insert new account
		// Username doesnt exists, insert new account
				if ($stmt = $con->prepare('INSERT INTO users (username, password, email, UserType, State) VALUES (?, ?, ?, ?, ?)')) {
			// We do not want to expose passwords in our database, so hash the password and use password_verify when a user logs in.
				$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
				$stmt->bind_param('sssss', $_POST['username'], $password, $_POST['email'], $_POST['UserType'], $_POST['State']);
				$stmt->execute();
                echo "<script>
		alert('You have successfully registered, you can now Sign-in!');
		window.location.href='index.html';
		</script>";
				
} else {
	// Something is wrong with the sql statement, check to make sure accounts table exists with all 3 fields.
	echo 'Could not prepare statement!';
}
	}
	
 }else {
	// Something is wrong with the sql statement, check to make sure accounts table exists with all 3 fields.
	echo 'Could not prepare statement!';
}
$con->close();
?>