<?php
// We need to use sessions, so you should always start sessions using the below code.
require_once 'vendor/autoload.php';
use Twilio\Rest\Client;
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}

?>


<!DOCTYPE html>
<html>
<style>





.content2 {
  width: 1000px;
  margin: 0 auto;
  
}
.content2 h2 {
  background-color: #575757f3;
  margin: 10;
  margin-top: 60px;
  padding: 15px 0;
  margin-right: 70%; 
  padding-left: 20px;
  font-size: 22px;
  border-bottom: 0px solid #e0e0e3;
  color: #fff;
  width: 98%;
  height: 30px;
  text-align: justify;
  
  box-shadow: 0px 10px 10px #362525;
}

.content2 h3 {
  background-color: #099E4A;
  margin: 10;
  margin-top: 10px;
  padding: 15px 0;
  margin-right: 70%; 
  padding-left: 20px;
  font-size: 22px;
  border-bottom: 0px solid #e0e0e3;
  color: #fff;
  width: 98%;
  height: 30px;
  text-align: justify;
}


.content2 > p, .content2 > div {
  //box-shadow: 0 0 5px 0 rgba(0, 0, 0, 0.1);
  //margin: 0px 0;
  padding: 25px !important;
  background-color: #fff !important;
  background-image: linear-gradient(to top, lightgrey 0%, lightgrey 1%, #e0e0e0 26%, #efefef 48%, #d9d9d9 75%, #bcbcbc 100%) !important;
  box-shadow: 10px 10px 10px #362525 !important;
  border-radius: 35px !important;
}
.content2 > p table td, .content2 > div table td {
  padding: 5px;
}
.content2 > p table td:first-child, .content2 > div table td:first-child {
  font-weight: bold;
  color: #4a536e;
  padding-right: 15px;
}
.content2 > div p {
  padding: 5px;
  margin: 0 0 10px 0;
}

.notificacion {
  //background: #108dc7 !important;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #ef8e38, #108dc7) !important;  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #09eaaa, #0b61e6) !important; /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

   border-radius: 0.8em;
  -moz-border-radius: 0.8em;
  -webkit-border-radius: 0.8em;
  color: #000000;
  display: inline-block;
  font-weight: bold;
  line-height: 1.6em;
  margin-right: 15px;
  text-align: center;
  //width: 800px; 
  padding: 30px;
  
}

/*the container must be positioned relative:*/
.content form{
    //background-color: #121010;
    //background-image: radial-gradient(circle, #101010, #15121f, #18132e, #1b143c, #1f134a, #202361, #1b3379, #004491, #0066ac, #0085ac, #009f94, #0db56f);
   // background-image: linear-gradient(to top right, #00ff99 18%, #ccff33 64%);
   //background: linear-gradient(to bottom, #66ffcc 0%, #ccff99 100%);
   
    
}
.custom-select {
  position: relative;
  font-family: Arial;
  display: block;
  margin: 0 auto;
}

.custom-select select {
  display: none; /*hide original SELECT element:*/
}

.select-selected {
  background-color: #089499;
}

/*style the arrow inside the select element:*/
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/*style the items (options), including the selected item:*/
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
  user-select: none;
}

/*style items (options):*/
.select-items {
  position: absolute;
  background-color: #084245;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/*hide the items when the select box is closed:*/
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
}

table {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 1000px;
  margin-left:auto; 
  margin-right:auto;
  box-shadow: 10px 10px 10px #362525;
  
}

td {
  border: 1px solid #ddd;
  padding: 15px;
  text-align: center;
}
 th {
  border: 1px solid #ddd;
  padding: 15px;
  text-align: center;
}

::placeholder {
  color: white;
}
input[type=submit] {
    border: 1px solid ;
    color: #fff;
    background: grey;
    padding: 10px 20px;
    border-radius: 3px;
    text-align: center;
    display: block;
    margin: 0 auto;
    
}
input[type=submit]:hover {
    background: #f44c0e;
    cursor: pointer;
}
tr:nth-child(even){background-color: #f2f2f2;}
tr:nth-child(odd){background-color: #a6a4a4;}
tr:hover {background-color: #7ad8f5;}

 th {
  padding-top: 12px;
  padding-bottom: 12px;
  
  background-color: #1ab040;
  color: white;
}

.button3 {
    margin-top: 68px !important; 
    margin-bottom: 30px !important;
}
</style>

	<head>
        <link rel="icon" href="img/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Home Page</title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
        
	</head>
	<body class="loggedin">
		<nav class="navtop">
			<div>
				<h1><img src="logo.png" alt="Cinque Terre" width="100" height="60" align="left">&nbsp;KISAAN - NETRA</h1>
				<a href="home.php"><i class="fas fa-sun"></i>Weather</a>
                <a href="adminStock.php"><i class="fas fa-store"></i><em>Stock</em></a>
                <a href="adminConsultant.php"><i class="fas fa-envelope"></i><em>Consultant</em></a>
				<a href="adminPhoneNumber.php"><i class="fa fa-address-book" aria-hidden="true"></i>Phone-Book</a>
                <a href="profile.php"><i class="fas fa-user-circle"></i>Profile</a>
				<a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
                
			</div>
		</nav><br>
		<div class="content">
			<h2>PHONE NUMBERS (DATABASE) </h2>
			<p>Welcome back, <em><?=$_SESSION['name']?>!</em> </p>
		</div>
	</body>
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

$sql = "SELECT * FROM `phone_info` ORDER BY `phone_info`.`phone_id` ASC ";

if(isset($_POST['submit']))
{
    $phone_number = "+91".$_POST['phone_no'];
    $username_fk = $_SESSION['name'];
    $stmt = $conn -> prepare ("INSERT INTO phone_info (phone_no, state, username_fk) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $phone_number, $_POST['state'], $username_fk);
    $stmt->execute();
echo "<br>";
	echo "<div class=notificacion>Data inserted into Database by</strong> <em>$username_fk</em></div>";
   echo "<br>";
	//array(':weather_temperature' => $weather_temperature, ':state' => $state, ':date' => $date, ':username_fk' => $username_fk)
 
}
?>

<div class="content2" style="width:200px;"><p><strong>SORT BY:</strong>
        <th><a href="adminPhoneNumber.php?sort=id" style="text-decoration: none;"><strong>ID</strong></a></th>&nbsp;
        <th><a href="adminPhoneNumber.php?sort=state" style="text-decoration: none;"><strong>STATE</strong></a></th>&nbsp;
</div>

<div class="content">



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

$sql = "SELECT * FROM `phone_info` ORDER BY `phone_info`.`phone_id` ASC ";


if ($_GET['sort'] == 'id')
{
    
$sql = "SELECT * FROM `phone_info` ORDER BY `phone_info`.`phone_id` ASC  ";
}

elseif ($_GET['sort'] == 'state')
{
    $sql = "SELECT * FROM `phone_info` ORDER BY `phone_info`.`state` ASC";
}

$result = $conn->query($sql);



if ($result->num_rows > 0) {
    echo "<table><tr><th>Phone_Id</th><th>Phone Number</th><th>State</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["phone_id"]. "</td><td>" . $row["phone_no"]. "</td><td>" . $row["state"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
?><br>

      <br>

		<p>The following details are going to be added into the Database! <strong>(Please be careful while inserting the data)</strong><p>
				
				<form action='' class="form-group2" method='post'>
                
                <strong>Add Phone Number: +91</strong><input type="text" name="phone_no" maxlength="10" minlength="10" style="width: 10em">&nbsp;&nbsp;
				 <strong>State/UT:&nbsp; </strong>
                 
				<select name="state">
                 
					<option value="Andhra Pradesh">Andhra Pradesh</option>
					<option value="Arunachal Pradesh">Arunachal Pradesh</option>
					<option value="Assam">Assam</option>
					<option value="Bihar">Bihar</option>
					<option value="Chhattisgarh">Chhattisgarh</option>
					<option value="Goa">Goa</option>
					<option value="Gujarat">Gujarat</option>
					<option value="Haryana">Haryana</option>
					<option value="Himachal Pradesh">Himachal Pradesh</option>
					<option value="Jharkhand">Jharkhand</option>
					<option value="Karnataka">Karnataka</option>
					<option value="Kerala">Kerala</option>
					<option value="Madhya Pradesh">Madhya Pradesh</option>
					<option value="Maharashtra">Maharashtra</option>
					<option value="Manipur">Manipur</option>
					<option value="Meghalaya">Meghalaya</option>
					<option value="Mizoram">Mizoram</option>
					<option value="Nagaland">Nagaland</option>
					<option value="Orissa">Orissa</option>
					<option value="Punjab">Punjab</option>
					<option value="Rajasthan">Rajasthan</option>
					<option value="Sikkim">Sikkim</option>
					<option value="Tamil Nadu">Tamil Nadu</option>
					<option value="Telagana">Telagana</option>
					<option value="Tripura">Tripura</option>
					<option value="Uttaranchal">Uttaranchal</option>
					<option value="Uttar Pradesh">Uttar Pradesh</option>
					<option value="West Bengal">West Bengal</option>
                    <option value="Delhi" disabled>Union Territories:</option>
					<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
					<option value="Chandigarh">Chandigarh</option>
					<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
					<option value="Daman and Diu">Daman and Diu</option>
					<option value="Delhi">Delhi</option>
                    <option value="Jammu and Kashmir">Jammu and Kashmir</option>
					<option value="Ladakh">Ladakh</option>
					<option value="Lakshadeep">Lakshadeep</option>
					<option value="Pondicherry">Pondicherry</option>
					
				</select>&nbsp;
			
				 &nbsp;
          

              
				<button class = "button button3"type="submit" name="submit" value = "Insert Into">Insert Data Into the Database!</button>

			 <br>	

	</form>		
<br><br><br>



</div>

</html>