//naam: Muhammet Tasci
<?php
$user='root';
$password='';
$database='examenwa2019';
$pdo=null;
try {
    $author_id = $_GET['id'];
    $pdo = new PDO("mysql:host=localhost;dbname=$database", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $result = $pdo->query("SELECT * FROM book WHERE author_id=$author_id");
    $result->setFetchMode(PDO::FETCH_ASSOC);
    $result->execute();
    $books = $result->fetchAll();
    if (sizeof($books) === 0) {
        print '<br> Auteur heeft geen boeken!';
    } else {
        foreach($books as $key => $value){
            $id = $value['id'];
            $title = $value['title'];
            echo '<form action="updatetitle.php" method="post">' . $id . '
        <input type="text" name="title" value="' . $title . '"/>
        <input type="hidden" name="id" value="'. $id . '">
        <input type="submit" value="Submit"></form>';
        }
    }
} catch (PDOException $exception) {
    print 'Exception!: ' . $exception->getMessage();
}
?>
<!--<form action="updatetitle.php">-->
<!--    1 <input type="hidden" name="id" value="1"/>-->
<!--    <input type="text" name="title" value="Het grote dierenboek"/>-->
<!--    <input type="submit" value="Submit">-->
<!--</form>-->
<!--<form action="updatetitle.php">-->
<!--    2 <input type="hidden" name="id" value="2"/>-->
<!--    <input type="text" name="title" value="Het grote plantenboek"/>-->
<!--    <input type="submit" value="Submit">-->
<!--</form>-->