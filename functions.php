<?php

/*
 * Function connects to the bike database
 *
 * @return PDO returns the database contents
 *
 */
function dbConn() :PDO{
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
function getData(PDO $db) :array {
    $query = $db->prepare("SELECT `manufacturer`, `model`, `wheelset`, `groupset`, `image` FROM `myBikes`;");
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
    if (count($data[0]) === 5) {
        $output = '';
        foreach ($data as $bike) {
            $output .=
                '<div class="tableContent">' .
                '<div class = "image"><img src="' . $bike['image'] . '" alt="picture of bike">' . '</img>' . '</div>' .
                '<div><p>' . $bike['manufacturer'] . '</p>' . '</div>' .
                '<div><p>' . $bike['model'] . '</p>' . '</div>' .
                '<div><p>' . $bike['wheelset'] . '</p>' . '</div>' .
                '<div><p>' . $bike['groupset'] . '</p>' . '</div>' .
                '</div>';
        }
        return $output;
    } else {
        return 'Please check bike data is complete.';
    }

}

?>

