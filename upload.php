<?php

if ( $_SERVER['REQUEST_METHOD']=='GET' && realpath(__FILE__) == realpath( $_SERVER['SCRIPT_FILENAME'] ) ) {
    die ('<h1>Nice try, Charlie!</h1><h2>Try going to the form page here: </h2><br> <div class=\"buttonContainer\"> <a href="formPage.php"><button type=\"button\">GO BACK TO FORM</button></a></div>');
}

require_once 'functions.php';

$connection = dbConn();
$state = addDataToDb($_POST, $connection);

if ($state) {
    header("Location: index.php");
} else {
    echo 'Incorrect input';
    echo '<div class="buttonContainer">
                <a href="formPage.php"><button type="button">GO BACK TO FORM</button></a>
          </div>';
}
?>