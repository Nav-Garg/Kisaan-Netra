<?php
// We need to use sessions, so you should always start sessions using the below code.
session_start();
// If the user is not logged in redirect to the login page...
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit();
}
$DATABASE_HOST = 'sql212.freecluster.eu';
$DATABASE_USER = 'epiz_25041824';
$DATABASE_PASS = 'XEXxRwaCxjJDO';
$DATABASE_NAME = 'epiz_25041824_test';

/*$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = 'accounts';
*/
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);


if (mysqli_connect_errno()) {
	die ('Failed to connect to MySQL: ' . mysqli_connect_error());
}
// We don't have the password or email info stored in sessions so instead we can get the results from the database.
$stmt = $con->prepare('SELECT password, email, UserType, State FROM users WHERE id = ?');
// In this case we can use the account ID to get the account info.
$stmt->bind_param('i', $_SESSION['id']);
$stmt->execute();
$stmt->bind_result($password, $email, $UserType, $State);
$stmt->fetch();
$stmt->close();



?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
        <link rel="icon" href="img/favicon.ico">
		<title>Home Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
    <style>

body {
    background: #C33764;  /* fallback for old browsers */
background: -webkit-linear-gradient(to left, #1D2671, #C33764);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to left, #1D2671, #C33764); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

}

div .form-group2{
    height: 100px;
}

textarea {
  height:10px;
  max-width:600px;
  color:#999;
  font-weight:400;
  font-size:20px;
  font-family:'Ubuntu', Helvetica, Arial, sans-serif;
  width:50%;
  background:#fff;
  border-radius:3px;
  line-height:2em;
  border:none;
  box-shadow:10px 10px 10px #362525;
  padding:90px;
  -webkit-transition: height 2s ease;
-moz-transition: height 2s ease;
-ms-transition: height 2s ease;
-o-transition: height 2s ease;
transition: height 2s ease;
margin-top: 15px !important;
margin-left: auto;
    margin-right: auto;
    margin: 90px 0px 0px; width: 599px; height: 46px;
    text-align: left;
    vertical-align: top;
    resize: none;
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
  
* {
  -webkit-font-smoothing:antialiased !important;
}

.content h3 {
  background-color: #F44336;
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

    </style>
	<body class="loggedin">
		<nav class="navtop">
			<div>
				<h1><img src="logo.png" alt="Cinque Terre" width="100" height="60" align="left">&nbsp;KISAAN - NETRA</h1>
				<a href="homeExpertStock.php"><i class="fas fa-home"></i>Home</a>
				<a href="profileExpertStock.php"><i class="fas fa-user-circle"></i>Profile</a>
				<a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
                
			</div>
		</nav><br>
		<div class="content">
			<h2>Home Page <em>[<?=$UserType?>]</em></h2>

<?php
/*if($State == "Delhi")
	$cityId = "1261481";*/
if($State == "Andhra Pradesh")
	$cityId = "1278629";
if($State == "Arunachal Pradesh")
	$cityId = "1278341";
if($State == "Assam")
	$cityId = "1278253";
if($State == "Bihar")
	$cityId = "1275716";
if($State == "Chhattisgarh")
	$cityId = "1275634";
if($State == "Goa")
	$cityId = "1271157";
if($State == "Gujarat")
	$cityId = "1270770";
if($State == "Haryana")
	$cityId = "1270260";
if($State == "Himachal Pradesh")
	$cityId = "1270101";
if($State == "Jammu and Kashmir")
	$cityId = "1269320";
if($State == "Jharkhand")
	$cityId = "1444365";
if($State == "Karnataka")
	$cityId = "1267701";
if($State == "Kerala")
	$cityId = "1267254";
if($State == "Madhya Pradesh")
	$cityId = "1264542";
if($State == "Maharashtra")
	$cityId = "1264418";
if($State == "Manipur")
	$cityId = "1263706";
if($State == "Meghalaya")
	$cityId = "1263207";
if($State == "Mizoram")
	$cityId = "1262963";
if($State == "Nagaland")
	$cityId = "1266366";
if($State == "Orissa")
	$cityId = "1261029";
if($State == "Punjab")
	$cityId = "1259223";
if($State == "Rajasthan")
	$cityId = "1258899";
if($State == "Sikkim")
	$cityId = "1256312";
if($State == "Tamil Nadu")
	$cityId = "1255053";
if($State == "Telagana")
	$cityId = "1269844";
if($State == "Tripura")
	$cityId = "1254169";
if($State == "Uttaranchal")
	$cityId = "1444366";
if($State == "Uttar Pradesh")
	$cityId = "1253626";
if($State == "West Bengal")
	$cityId = "1252881";
if($State == "Andaman and Nicobar Islands")
	$cityId = "1278647";
if($State == "Chandigarh")
	$cityId = "1274746";
if($State == "Dadar and Nagar Haveli")
	$cityId = "1273726";
if($State == "Delhi")
	$cityId = "1261481";
if($State == "Ladakh")
	$cityId = "1267776";
if($State == "Lakshadeep")
	$cityId = "1267390";
if($State == "Pondicherry")
	$cityId = "1259424";




$apiKey = "0f454fd2d74825cef4c234b35f8bd206";
//$cityId = "1278629";
$googleApiUrl = "http://api.openweathermap.org/data/2.5/weather?id=" . $cityId . "&lang=en&units=metric&APPID=" . $apiKey;

$ch = curl_init();

curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_URL, $googleApiUrl);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
curl_setopt($ch, CURLOPT_VERBOSE, 0);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
$response = curl_exec($ch);

curl_close($ch);
$data = json_decode($response);
date_default_timezone_set('Asia/Kolkata');
$currentTime = time();


?>



<body>

    <div class="report-container">

        <h3><?php echo $data->name; ?>: Stock Status</h3>
        <div class="time">
            <div><?php echo date("l g:i a", $currentTime); ?></div>
            <div><?php echo date("jS F, Y",$currentTime); ?></div>
            
        </div>
       
    </div>
</body>


			<p>Welcome back, <em><?=$_SESSION['name']?>!</em>&nbsp; The following details are sent through an SMS to the Farmers! <strong>(Please be careful while inserting the data)</strong><br><br>
				 
				<form action='' class="form-group2" method='post'>
					<strong>State/UT:&nbsp </strong>
				<?php echo $State ?>&nbsp;
				</select>&nbsp;<strong>Seed name:&nbsp;</strong> 
                <input type="text" id="seeds" name="seeds" style="
    height: 1em;
">
				&nbsp;<strong>Seed price:&nbsp;</strong> &nbsp;
                <input type="text" id="price" name="price" size="8" style="
    height: 1em;
">&nbsp;
                <strong>Store Address:&nbsp;</strong> 
                <input type="text" id="store_address" name="store_address" style="
    height: 1em;
">
				<?php echo "<br>";?>
				 &nbsp;
                             <pre><font size="4"><strong>Available On(Date): &nbsp;</strong><input type="date" name="date"> &nbsp;</font></pre>
                             <pre><font size="4"><strong>Store Contact(No):&nbsp;</strong><input type="text" name="store_contact"></font></pre>

</p>
<link href='https://fonts.googleapis.com/css?family=Ubuntu:500,500' rel='stylesheet' type='text/css'>
<div ng-app="myApp">
<div ng-controller="AppCtrl" align="center"><pre>
<textarea id="TextArea" ng-model="loremIpsum" ng-keyup="autoExpand($event)" name="mess" placeholder="Special message for Farmers! (Max Length: 500)" maxlength="500">
</textarea></pre>
  </div>
</div>
               
				<button class = "button button3"type="submit" name="submit2" value = "Insert Into">Insert Data Into the Database!</button>

				</form>

			
<br><br><br> <br> <br><br><br> <br> <br><br><br> <br> <br><br><br> <br> <br>

<?php 

if(isset($_POST['submit2']))
{
	$store_address = $_POST['store_address'];
    $username_fk = $_SESSION['name'];
    $seeds = $_POST['seeds'];
    $price = $_POST['price'];
    $avail_date = $_POST['date'];
    $store_contact = $_POST['store_contact'];
    //$stmt = $con -> prepare ("INSERT INTO expert_stock (store_address, seeds, price, avail_date, store_contact, state, username_fk, comment) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
	//$stmt->bind_param("ssssssss", $_POST['store_address'], $_POST['seeds'], $_POST['price'], $_POST['date'], $_POST['contact'], $state, $_SESSION['name'], $_POST['mess']);
    $stmt = $con -> prepare ("INSERT INTO expert_stock (store_address, seeds, price, avail_date, store_contact, state, username_fk, comment) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
	$stmt->bind_param("ssssssss", $store_address, $seeds, $price, $avail_date, $store_contact, $State, $_SESSION['name'], $_POST['mess']);
	$stmt->execute();
    echo "<br><br>";
	echo "<div class=notificacion>Data inserted into Database by</strong> <em>$username_fk</em></div>";
   
	//array(':weather_temperature' => $weather_temperature, ':state' => $state, ':date' => $date, ':username_fk' => $username_fk)
	$con -> commit();
	$stmt->close(); 
}
?>
		</div>

	</body>
</html>

