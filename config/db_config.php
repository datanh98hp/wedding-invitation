<?php
// setup connect to db

$host = "localhost";
$username="root";
$password="";
$dbname= "wedding_invitation";

// Create connection
$connect = mysqli_connect($host, $username, $password,$dbname);
if(!$connect){
    die('Connect to DB failed ..... Please try againt. '.mysqli_connect_error());
}else{
    // echo "OK". $_SERVER['REMOTE_ADDR'];
}

?>