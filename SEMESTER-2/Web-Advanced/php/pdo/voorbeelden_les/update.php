<pre>
<?php
$host = '127.0.0.1';
$db   = 'voorbeelden';
$user = 'root';
$pass = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";

$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];
try {
    $pdo = new PDO($dsn, $user, $pass, $options);
    $result=$pdo->exec('UPDATE `person` SET `name`=\'jan\' WHERE `id`=1');
    print($result);
} catch (PDOException $e) {
    var_dump($e);
}
?>
</pre>
