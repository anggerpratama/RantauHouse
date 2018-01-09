<?php
  
  $data = json_decode( file_get_contents('php://input'));

  include 'conn.php';

  $id = getId(10);

  $qry = $pdo->prepare("INSERT INTO `user` (`name` , `email` , `nomerhp` , `address` , `username` , `password`)
  VALUES ('$data->name' , '$data->email' , '$data->nomerhp' , '$data->address' , '$data->username' , '$data->password')");
  if ($data->name) {
    $qry->execute(); 
  }

  $pdo = null;

  function getId($length)
		{
    	$char = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    	$charLength = strlen($char);
    	$randomString = '';

    	for ($i = 0; $i < $length; $i++) {
        $randomString .= $char[rand(0, $charLength - 1)];
    	}
    	return $randomString;
		}

?>