<?php

/*
 * Function connects to the bike database
 *
 * @return PDO returns the database contents
 *
 */
function dbConn(){
    $db = new PDO('mysql:host=db; dbname=calumsCollection', 'root', 'password');
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    return $db;
}

/*
 * Grabs all the data for each bike
 *
 * @param $db PDO the myBikes DB
 *
 * @return array the data for each bike
 */
function getData($db) :array {
    $query = $db->prepare("SELECT `manufacturer`, `model`, `wheelset`, `groupset` FROM `myBikes`;");
    $query->execute();
    $result = $query->fetchAll();
    return $result;
}

/*
 * Takes data from getData output array and displays as HTML to be called into index.php
 *
 * @param $data array of the bikes data selected from getData
 *
 * @return a string of HTML code to be inserted to index.php to display on front end
 */
function getBike(array $data) :string
{
    $output = '';
    foreach ($data as $bike) {
        $output .=
            '<div class="tableContent">' .
            '<div class = "manufacturer"><p>' . $bike['manufacturer'] . '</p>' . '</div>' .
            '<div class = "model"><p>' . $bike['model'] . '</p>' . '</div>' .
            '<div class = "wheelset"><p>' . $bike['wheelset'] . '</p>' . '</div>' .
            '<div class = "groupset"><p>' . $bike['groupset'] . '</p>' . '</div>' .
            '</div>';
    }
    return $output;
}

?>

