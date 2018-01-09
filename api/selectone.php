<?php

    $data = json_decode( file_get_contents('php://input'));
    include 'conn.php';

    $datas = $pdo->prepare("SELECT * FROM `user` WHERE `id_user` = '$data->id'");
	$datas->execute();
    while ($a = $datas->fetch(PDO::FETCH_ASSOC)) {
        $resu[] = $a;
    }

    echo json_encode($resu);

    $pdo = null;
?>