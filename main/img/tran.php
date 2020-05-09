
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>MSG</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>

<div class="form-group">
<a href="../home.php" ><font color="black"><i class="fas fa-arrow-left"></i> Go, Back!</a>

        <div id="form-wrapper" style="max-width:500px;margin:auto;">
    <form method = "post" action = "tran.php" >
    
    	
    	Source Language:
        <select name="source" >
                    <option value="en">English</option>
                    <option value="es">Espanayol</option>
                    <option value="hi">Hindi</option>
                    

        </select> <br> <br>
        Target Language:&nbsp;
        <select name="target" text-align-last: center;>
                    <option value="hi">Hindi</option>
                    <option value="es">Espanayol</option>
                    <option value="en">English</option>
                    

                </select><br><br>
            <input type="text" id="text" name="text" placeholder="Enter text for Translation"><br><br>
    	<button type="submit" class="btn" name="submit"><i class="fas fa-sign-in-alt"></i> Submit</button>
    
  <br><br>  
<?php
require_once ('vendor/autoload.php');
use \Statickidz\GoogleTranslate;

if(isset($_POST['submit']))
{

$source = $_POST['source'];
$target = $_POST['target'];
$text = $_POST['text'];

$trans = new GoogleTranslate();
$result = $trans->translate($source, $target, $text);

echo "<p><font color=black>$result";
}
?>
        </form>
    </div>
</div>
    <br><br><br>

    



</body>
</html>



