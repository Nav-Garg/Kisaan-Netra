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
// Create connection
$conn = new mysqli($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>



			
			

<?php 
if(isset($_POST['submit']))
{
    $phone_number = "+91".$_POST['phone_no'];
    $username_fk = $_POST['name'];
    $stmt = $conn -> prepare ("INSERT INTO phone_info (phone_no, state, username_fk) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $phone_number, $_POST['state'], $username_fk);
    $stmt->execute();
echo "<script type='text/javascript'>alert('Your information has been inserted into Database, Thank you!');
window.location='../#top';
</script>";
	

	//array(':weather_temperature' => $weather_temperature, ':state' => $state, ':date' => $date, ':username_fk' => $username_fk)
	$con -> commit();
	$stmt->close(); 
}
?>