<?php
    $data = json_decode( file_get_contents('php://input'));

    include 'conn.php';

    $qry = $pdo->prepare("UPDATE `user` SET `name` = '$data->name' , `email` = '$data->email' ,
     `nomerhp` = '$data->nomerhp' , `address` = '$data->address' , `username` = '$data->username' , `password` = '$data->password'
     WHERE `id_user` = '$data->id_user'" );

     if ($data->name) {
         $qry->execute();
     }

     $pdo = null;
     
    
?>