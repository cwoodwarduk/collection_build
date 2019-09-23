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

?>
