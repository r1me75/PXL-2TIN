<?php
//naam: Muhammet Tasci
$user='root';
$password='';
$database='examenwa2019';
$pdo=null;
$title = $_POST['title'];
$id = $_POST['id'];
try {
    $pdo = new PDO("mysql:host=localhost;dbname=$database", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $result = $pdo->exec("UPDATE book SET title = '$title' WHERE id = $id");
    print 'Updated book with id: ' . $id . ' the title to "' . $title . '"';

    // emirin
//    $pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password);
//    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//
//    $statement = $pdo->prepare('UPDATE book SET title = :title WHERE id = :id');
//    $statement->bindParam(':title', $title, PDO::PARAM_STR);
//    $statement->bindParam(':id', $id, PDO::PARAM_INT);
//    $statement->execute();
} catch (PDOException $exception) {
    print 'Exception!: ' . $exception->getMessage();
}