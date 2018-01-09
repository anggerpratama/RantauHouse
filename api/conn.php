<?php

$dsn = "mysql:dbname=data_kost;";
$user = "root";
$password = "config123";

    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: Origin, X-Requested-With , Content-Type, Accept");

    $pdo = new PDO($dsn , $user , $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>