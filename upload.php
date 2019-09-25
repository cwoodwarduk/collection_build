<?php
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