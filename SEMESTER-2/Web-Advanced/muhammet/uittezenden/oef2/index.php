//naam: Muhammet Tasci

<?php
$user='root';
$password='';
$database='examenwa2019';
$pdo=null;
try {
    $pdo = new PDO("mysql:host=localhost;dbname=$database", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $result = $pdo->query("SELECT * FROM author");
    $result->setFetchMode(PDO::FETCH_ASSOC);
    $result->execute();
    $authors = $result->fetchAll();
    echo '<form action="showbooks.php" method="get">
             <select name="id">';
    foreach($authors as $key => $value){
        $id = $value['id'];
        $name = $value['NAME'];
        echo '<option value="' . $id . '">'. $name . "</option>";
    }
    echo '<input type="submit" value="Submit">
          </form>';
} catch (PDOException $exception) {
    print 'Exception!: ' . $exception->getMessage();
}
?>