<?php

use model\CartModel;
use service\PriceService;

require_once 'credentials.php';
require_once 'vendor/autoload.php';



$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];

try{
    $pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password, $options);
    // maak gebruik van CartModel en PriceService
    // om alle producten en de totale prijs af te drukken
    $id = $_GET['id'];
    $cartModel = new CartModel($pdo);
    $cart = $cartModel->getCart($id);

    for ($i = 0; $i < $cart->getNumberOfCartItems(); $i++) {
        $cartItem = $cart->getCartItem($i);
        print($cartItem->getQuantity().' '.$cartItem->getName().' '.$cartItem->getPrice().'<br>');
    }

    $total = PriceService::calculatePrice($cart);
    print($total);

} catch (Exception $exception){
    print("Something went wrong");
}




