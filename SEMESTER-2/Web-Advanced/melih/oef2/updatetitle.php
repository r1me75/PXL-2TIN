<?php
//naam: Melih Ozcan
$host = '127.0.0.1';
$db = 'examenwa2019';
$user = 'root';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];
try {
    $pdo = new PDO($dsn, $user, null, $options);
    $id = $_GET['id'];
    $title = $_GET['title'];
//    $statement = $pdo->pprepare ('UPDATE book SET title =? WHERE id = ?');
    $statement = $pdo->prepare('UPDATE `book` SET `title`=? WHERE `id`=?');
    $statement->bindParam(1, $title, PDO::PARAM_STR);
    $statement->bindParam(2, $id, PDO::PARAM_STR);
    $result=$statement->execute();
} catch (PDOException $e) {
    var_dump($e);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Index</title>
</head>
<body>
<?php
echo $title;
?>
</body>
</html>
