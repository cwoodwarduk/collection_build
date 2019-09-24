<?php

require_once 'functions.php';
?>

<!DOCTYPE html>
<html lang="en-GB">

<head>
    <title>My Bike Collection</title>
    <link href="https://fonts.googleapis.com/css?family=M+PLUS+1p|Permanent+Marker&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Normalize.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
    <section>
        <h1>My Bike Collection</h1>

        <div class="table-headings">
            <div>
                <h2>Manufacturer</h2>
            </div>
            <div>
                <h2>Model</h2>
            </div>
            <div>
                <h2>Wheelset</h2>
            </div>
            <div>
                <h2>Groupset</h2>
            </div>
        </div>

        <?php
        $db = dbConn();
        $data = getData($db);
        $bike = getBike($data);
        echo $bike?>

    </section>
</body>

