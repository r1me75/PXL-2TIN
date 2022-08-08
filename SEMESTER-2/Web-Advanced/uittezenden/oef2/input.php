<?php

use model\CartModel;

require_once 'credentials.php';
require_once 'vendor/autoload.php';


$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];

try{
    $pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password, $options);
    // maak gebruik van CartModel om de id's van de tabel cart op te vragen 
    // en af te drukken in een select
    $cartModel = new CartModel($pdo);

    $ids = $cartModel->getIds();

    // KAN ALS VOLGT MAAR OOK ZOALS HELEMAAL BENEDEN!

//    print('<form action="result.php"> Cart id=');
//    print('<select name="id">');
//
//    foreach($ids as $value) {
//        print('<option>'.$value['id']).'</option>';
//    }
//    print('</select>');
//    print('<input type="submit" value="Submit">');
//    print('</form>');

} catch (Exception $exception){
    print("Something went wrong");
}

?>

<form action="result.php">
    Cart id =
    <select name="id">
        <?php
            foreach($ids as $value) {
                print('<option>'.$value['id']).'</option>';
            }
        ?>
    </select>
    <input type="submit" value="Submit">
</form>


