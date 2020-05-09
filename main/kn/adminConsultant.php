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

.notificacion {
  background: #21138f;
   border-radius: 0.8em;
  -moz-border-radius: 0.8em;
  -webkit-border-radius: 0.8em;
  color: black;
  display: inline-block;
  font-weight: bold;
  line-height: 1.6em;
  margin-right: 15px;
  text-align: center;
  width: 800px; 
  padding: 30px;
}

/*the container must be positioned relative:*/
.content form{
    //background-color: #121010;
    //background-image: radial-gradient(circle, #101010, #15121f, #18132e, #1b143c, #1f134a, #202361, #1b3379, #004491, #0066ac, #0085ac, #009f94, #0db56f);
   // background-image: linear-gradient(to top right, #00ff99 18%, #ccff33 64%);
   background: linear-gradient(to bottom, #66ffcc 0%, #ccff99 100%);
    border-radius: 20px;
    padding: 30px;
    opacity: 0.90;
    
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
  width: 65.8%;
  margin-left:auto; 
  margin-right:auto;
  
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
input[type=text] {
    border: 1px solid ;
    color: #fff;
    background: #034a91;
    padding: 10px 20px;
    border-radius: 3px;
    display: block;
    margin: 0 auto;
    margin-bottom: 0.5em;
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
				<h1><img src="logo.png" alt="Cinque Terre" width="100" height="60" align="left">KISAAN - NETRA</h1>
				<a href="home.php"><i class="fas fa-home"></i>Home</a>
				<a href="profile.php"><i class="fas fa-user-circle"></i>Profile</a>
				<a href="adminStock.php"><i class="fas fa-language"></i><em>Stock</em></a>
                <a href="api/apismsphp.php"><i class="fas fa-envelope"></i><em>Send SMS</em></a>
                <a href="logout.php"><i class="fas fa-sign-out-alt"></i>Logout</a>
                
			</div>
		</nav>
		<div class="content">
			<h2>Home Page [ADMIN] </h2>
			<p>Welcome back, <em><?=$_SESSION['name']?>!</em> </p>
		</div>
	</body>
</html>

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

$sql = "SELECT stock_id, store_address, seeds, price, avail_date, store_contact, state, username_fk, comment FROM  expert_stock ";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>Stock_id</th><th>Username</th><th>Seeds</th><th>Price(Rs.)</th><th>Avail.Date</th><th>store_address</th><th>store_contact</th><th>state</th><th>comment</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["stock_id"]. "</td><td>" . $row["username_fk"]. "</td><td>" . $row["seeds"]. "</td><td> ". $row["price"]. " </td><td>" . $row["avail_date"]. "</td><td>". $row["store_address"]. " </td><td>" . $row["store_contact"]. " </td><td>" . $row["state"]. " </td><td>" . $row["comment"]. "</td>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
?>
<br><br>
<div class="content">

<form method = "POST">
 <input type = "text" name = "id" placeholder = "Enter Stock_id">
 
<body>


<!--surround the select box with a "custom-select" DIV element. Remember to set the width:-->

 <div class="custom-select" style="width:200px;">
 <select name="target">   
    <option value="hi" selected>Language Selection (Default: Hindi)</option>
    <option value="hi">Hindi</option>
    <option value="pa">Punjabi</option>
    <option value="bn">Bengali</option>
    <option value="en">English</option>
 </select>
 
</div>

<script>
var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);
</script>

</body>
</html> <br>
 <input type = "submit" name = "search" value = "Send Message"><br><br>
 <input type="submit"  id="SubmitForm" name= "voice" value="Send Voice Message"/>
</form>

<table>
 <br>
<?php

if(isset($_POST['voice']))
{
    require_once('voice.php');
}
?>
<br>

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
$conn = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS);
$db = mysqli_select_db($conn, $DATABASE_NAME); 
  require_once ('vendor/autoload.php');
  use \Statickidz\GoogleTranslate;
  $trans = new GoogleTranslate();

  if (isset($_POST['search']))
  {
    $id = $_POST['id'];
    
    $query = "SELECT * FROM expert_stock WHERE stock_id = '$id'";
    $query_run = mysqli_query($conn, $query);
    

    while ($rows = mysqli_fetch_array($query_run))
    {
if(isset($_POST['search']))
{
  // Authorisation details.
  $username = "kisaannetra@gmail.com";
  $hash = "50db1fde63dc0a74e6cdc5f5276295a06800d5fe27487f3c3ef5a08ed927a3eb";
  $sender = "TXTLCL";
  $unicode = "1";
  // Config variables. Consult http://api.textlocal.in/docs for more info.
  $test = "0";

  // Data for text message. This is the text message data.
  // This is who the message appears to be from.
  $numbers = "+919711191064"; // A single number or a comma-seperated list of numbers
  $a = ucfirst(strtolower($rows['seeds']));
  $aa = " Seed is available in " ;
  $b = ucfirst(strtolower($rows['store_address']));
  $c = " for Rupees ";
  $d = $rows['price'];
  $e = ". Contact ";
  $f = $rows['store_contact'];
  $g = ". ";
  $h = $rows['comment'];
  $message = $a.$aa.$b.$c.$d.$e.$f.$g.$h;
  $target = $_POST['target'];
    //"seed" is available in "store_add" for Rs."Price".Contact "PhoneNo"+ Comment
    //echo $message; echo  "<br>";
  $message = $trans->translate("en", $target, $message);  
 
  // 612 chars or less
  // A single number or a comma-seperated list of numbers
  $message = urlencode($message);
  $data = "username=".$username."&hash=".$hash."&message=".$message."&sender=".$sender."&numbers=".$numbers."&test=".$test."&unicode=1";
  //api.textlocal.in/send/?apikey=jxslui0FkGo-1rPMwGvOGQYWiLuU7r6fDxXBtUqJXP&sender=TXTLCL&numbers=919711191064&message=नमस्कार&unicode=1
  $ch = curl_init('http://api.textlocal.in/send/?');
  curl_setopt($ch, CURLOPT_POST, true);
  curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  $result = curl_exec($ch); // This is the result from the API
  curl_close($ch);
  
  echo '<div class="notificacion">', $result,'</div>';
}

      ?>
      <br> <br>
       <tr>
    <th>Stock_id</th>
    <th>Username</th>
    <th>Status</th>
    
  </tr> 
      <tr>
        <td> <?php echo $rows['stock_id']; ?></td>
        <td> <?php echo $rows['username_fk']; ?></td>
        <td> Message Sent</td>

      </tr>
      


      <?php 

    }

  }

  ?>

</table>


</form>
</div>

</form>


</body>
</html>
