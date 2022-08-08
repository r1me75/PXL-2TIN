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
    $statement = $pdo->query('SELECT * FROM `book` WHERE author_id = ' . $id);
    $count = 0;
    $authors = [];
    while (($row = $statement->fetch()) !== false) {
        $count++;
        $books[] = $row;
    }
//    $authors = $statement->fetchAll();
//    print_r($authors[0]['Id']);
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
for ($i = 0; $i < $count; $i++) {
    echo '<form action="updatetitle.php" method="get">';
    echo  $books[$i]['id'] . ' <input type="hidden" name="id" value="' . ($i + 1) . '"/>';
    echo '<input type="text" name="title" value="' . $books[$i]['title'] . '"/>';
    echo '<input type="submit" value="Submit" >';
    echo '</form>';
}
?>

</body>
</html>