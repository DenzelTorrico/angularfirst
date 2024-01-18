<?php
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    header("Access-Control-Allow-Headers: *");
     try{
        $db = new PDO("mysql:host=localhost;dbname=mercadozdb;charset=utf8","root","admin");
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $query = $db->query("select * from productos");
        echo json_encode($query->fetchAll(PDO::FETCH_ASSOC));
     }catch(Exception $e){
        echo $e;
     }
?>