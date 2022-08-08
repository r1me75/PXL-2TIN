<!-- naam: Emir Ozdemir -->
<?php

$user='root';
$password='';
$server = '127.0.0.1';
$database='examenwa2019';
$pdo=null;

$id = $_GET['id'];
$title = $_GET['title'];

try {
    $pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $statement = $pdo->prepare('UPDATE book SET title = :title WHERE id = :id');
    $statement->bindParam(':title', $title, PDO::PARAM_STR);
    $statement->bindParam(':id', $id, PDO::PARAM_INT);
    $statement->execute();

    print($title);

    /* Of opnieuw uit db halen
        $statement = $pdo->prepare('SELECT * from book WHERE id = :id');
        $statement->bindParam(':id', $id, PDO::PARAM_INT);
        $statement->setFetchMode(PDO::FETCH_ASSOC);
        $statement->execute();
        $updated = $statement->fetch();

        print($updated['title']);
     */
} catch (PDOException $ex) {
    print($ex);
}

