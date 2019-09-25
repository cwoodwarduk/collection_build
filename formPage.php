<?php


//if(isset($_SESSION["formError"])) {
//    echo "<h2>" . $_SESSION["formError"] . "</h2>";
//    session_destroy();
//}

?>

<!DOCTYPE html>
<html lang="en-GB">

<head>
    <title>My Bike Collection</title>
    <link href="https://fonts.googleapis.com/css?family=M+PLUS+1p|Permanent+Marker&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Normalize.css">
    <link rel="stylesheet" type="text/css" href="formStyles.css">
</head>

<body>
<section>
    <h1>Add a bike</h1>

    <div class="addContainer">
        <div class="buttonContainer">
            <a href="index.php"><button type="button">BACK TO COLLECTION</button><a/>
        </div>
    </div>

    <div class="addBikeForm">
        <form method="post" action="upload.php">
            <div class="formLeft">
            1. Manufacturer: <br>
            <input type="text" name="manufacturer" length="255" required><br>
            2. Model: <br>
            <input type="text" name="model" length="255" required><br>
            3. Wheelset: <br>
            <select name="wheelset" required>
                <option value="Mavic Aksium">Mavic Aksium</option>
                <option value="Compagnolo Scirocco CX">Compagnolo Scirocco CX</option>
                <option value="DT R460">DT R460</option>
                <option value="Zipp 303">Zipp 303</option>
                <option value="Hope 20Five RS4">Hope 20Five RS4</option>
            </select> <br>
            4. Groupset<br>
            <select name="groupset" required>
                <option value="Tiagra 50-34/11-28">Tiagra 50-34/11-28</option>
                <option value="Shimano GRX 600 2x 46-30/11-34">Shimano GRX 600 2x 46-30/11-34</option>
                <option value="Shimano 105 52-36/11-28">Shimano 105 52-36/11-28</option>
                <option value="Shimano Dura-Ace Di2 52-36/11-28">Shimano Dura-Ace Di2 52-36/11-28</option>
                <option value="Campagnolo Potenza 52-36/11-29">Campagnolo Potenza 52-36/11-29</option>
            </select>
            </div>

            <div class="formRight" >
                5. Copy and paste a URL link to your chosen image here:<br>
                <input type="url" name="image" length="257" required><br>
                <input class="submit" type="submit" name="submit" value="SUBMIT NEW BIKE">
            </div>
        </form>


    </div>

</section>
</body>
