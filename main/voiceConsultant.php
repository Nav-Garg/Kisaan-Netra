<?php
//require_once 'Services/Twilio.php';
require_once 'vendor1/autoload1.php';

use Twilio\Rest\Client;
// Include the Twilio PHP library.


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


  include_once ('vendor/autoload.php');
  use \Statickidz\GoogleTranslate;
  $trans = new GoogleTranslate();

  $id1 = $_POST['id1'];
    
    $query = "SELECT * FROM expert_consultant WHERE consultant_id = '$id1'";
    $query_run = mysqli_query($conn, $query);
    

    while ($rows = mysqli_fetch_array($query_run))
    {



  // Data for text message. This is the text message data.
  // This is who the message appears to be from.
 /* include_once('phonedb.php'); 
  $numbers = "$phone"; // A single number or a comma-seperated list of numbers
  echo $numbers;*/
 $a = "Organic: " ;
  $b = ucfirst(strtolower($rows['organic']));
  $c = ". Horticulture: " ;
  $d = ucfirst(strtolower($rows['horticulture']));
  $e = ". Training for Farmers: ";
  $f = ucfirst(strtolower($rows['training']));
  $g = ". Protection ";
  $h = ucfirst(strtolower($rows['protection']));
  $i = ". Technology ";
  $j = ucfirst(strtolower($rows['tech']));
  $k = ". Contact Number of State: " ;
  $l = ucfirst(strtolower($rows['contact_state']));
  $m = ". Contact Number of District:  " ;
  $n = ucfirst(strtolower($rows['contact_district']));
  $o = ". " ;
  $p = ucfirst(strtolower($rows['comment']));

  $message = $a.$b.$c.$d.$e.$f.$g.$h.$i.$j.$k.$l.$m.$n.$o.$p;
  $target = $_POST['target'];

  $message = $trans->translate("en", $target, $message);  

  // 612 chars or less
  // A single number or a comma-seperated list of numbers



// Library version.
foreach ($arrayPhone as $to_number)
{
    
// Your Account SID and Auth Token from twilio.com/console
$sid = 'AC1d37dc92281d7a715976f5a2f6fc876c';
$token = 'e7450c337404d3b6c23942ee04fab78a';
// Include the Twilio PHP library.


// Library version.


//$from_number = "+12013451186";

// The number of the phone receiving call.


// In production, these should be environment variables. E.g.:
// $auth_token = $_ENV["TWILIO_ACCOUNT_SID"]

// A Twilio number you own with Voice capabilities
$twilio_number = "+12013451186";

// Where to make a voice call (your cell phone?)
//$to_number = "+918588850630";
$twilio = new Client($sid, $token);
//$message = "आज का तापमान आनंददायक रहेगा। कृपया, अपनी दालें सावधानी से बेचें।";

$call = $twilio->calls
               ->create($to_number, // to
                        $twilio_number, // from
                        array(
                            "twiml" => "<Response><Say>$message</Say><Play>https://tumbleweed-wallaby-7884.twil.io/assets/QuiteTime.mp3</Play></Response>"
                        )
                        //array("url" => "https://handler.twilio.com/twiml/EH20dde7bbf4ac9808cd21e5598ababb45")
               );

//print($call->sid);


    }
    echo '<script language="javascript">';
echo 'alert("Voice Message Sent Successfully!")';
echo '</script>';
echo '<div class="notificacion">', "Voice Message Sent!",'</div>'; 
echo "<br><br>";
}
?>
