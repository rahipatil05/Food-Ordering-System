<?php
$con = mysqli_connect("localhost", "root", "", "fosdb");

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

// Optional: echo "Connected successfully";
?>
