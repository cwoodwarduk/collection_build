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
function getManufacturer($db){
    $query = $db->prepare("SELECT `manufacturer`, `model`, `wheelset`, `groupset` FROM `myBikes`;");
    $query->execute();
    $result = $query->fetchAll();
    return $result;
}

?>

