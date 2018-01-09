<?php
  
  $data = json_decode( file_get_contents('php://input'));

  include 'conn.php';

  $qry = $pdo->prepare("DELETE FROM `user` WHERE `id_user` = '$data->id' ");
  $qry->execute();
  $pdo = null;

?>