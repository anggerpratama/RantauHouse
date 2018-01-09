<?php 

    include 'conn.php';

    $data = $pdo->prepare("SELECT * FROM `user`");
	$data->execute();
    while ($a = $data->fetch(PDO::FETCH_ASSOC)) {
        $resu[] = $a;
    }

    echo json_encode($resu);

    $pdo = null;

?>