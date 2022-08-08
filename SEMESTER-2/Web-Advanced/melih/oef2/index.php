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
    $statement = $pdo->query('SELECT * FROM `author`');
    $count = 0;
    $authors = [];
    while (($row = $statement->fetch()) !== false) {
        $count++;
        $authors[] = $row;
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
<form action="showbooks.php" method="get">
    <select name="id">
        <?php
        echo $count;
        for ($i = 0; $i < $count; $i++) {
            echo '<option name="' . $authors[$i]['id'] . '" value="' . $authors[$i]['id'] . '">' . $authors[$i]['name'] . '</option>';
        }
        ?>
    </select>
    <input type="submit" value="Submit">
</form>
</body>
</html>