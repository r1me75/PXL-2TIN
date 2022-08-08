<!-- naam: Emir Ozdemir -->
<?php

$user='root';
$password='';
$server = '127.0.0.1';
$database='examenwa2019';
$pdo=null;

$author_id = $_GET['id'];

try {
    $pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $statement = $pdo->prepare('SELECT * from book where author_id = :author_id');
    $statement->bindParam(':author_id', $author_id, PDO::PARAM_INT);
    $statement->setFetchMode(PDO::FETCH_ASSOC);
    $statement->execute();
    while ($row = $statement->fetch()) {
        print('<form action="updatetitle.php">');
        print($row['id'].'<input type="hidden" name="id" value="'.$row['id'].'" />');
        print('<input type="text" name="title" value="'.$row['title'].'" />');
        print('<input type="submit" value="Submit">');
        print('</form>');
    }
} catch (PDOException $ex) {
    print($ex);
}

