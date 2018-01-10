<?php
    $data = json_decode( file_get_contents('php://input'));

    include 'conn.php';

    $qry = $pdo->prepare("SELECT * FROM `user` WHERE `username` = '$data->username'");
    $qry->execute();

    $selin = $qry->fetch(PDO::FETCH_ASSOC);

    if ($qry->rowCount() == 0) {
        $res = "Fname";
    } else if($data->password <> base64_decode($selin['password'])){
        $res = "Fpass";
    }else {
        $res = $selin;
    }

    echo json_encode($res);
    

?>