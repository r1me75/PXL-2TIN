<?php
// naam: Emir Ozdemir
namespace model;

use data\Cart;
use data\CartItem;
use PDO;

class CartModel {

    private $pdo;

    public function __construct(PDO $pdo){
        $this->pdo=$pdo;
    }

    public function getIds():array{
        // SELECT id FROM cart
        // maak een array met daarin alle id's uit de tabel cart
        // en geef deze array terug
        $statement = $this->pdo->query('SELECT id from cart');
        $statement->setFetchMode(PDO::FETCH_ASSOC);
        return $statement->fetchAll();
    }

    public function getCart(int $id):Cart{
        // onderstaande query geeft 
        // een array terug met daarin een waarde voor quantity, name & price
        // van elk item in de cart met id = 1
        // pas aan zodanig dat id $id gebruikt wordt
        // als er geen waarden opgevraagd worden, wordt een Exception opgeworpen
        // anders wordt een Cart-object gemaakt met daarin alle CartItems 
        /*
        SELECT
            cart_items.quantity,
            product.name,
            product.price
        FROM cart
        JOIN cart_items
          ON cart.id = cart_items.cart_id
        JOIN product
          ON product.id = cart_items.product_id
        WHERE cart.id = 1
        */
        $statement = $this->pdo->prepare('SELECT
            cart_items.quantity,
            product.name,
            product.price
        FROM cart
        JOIN cart_items
          ON cart.id = cart_items.cart_id
        JOIN product
          ON product.id = cart_items.product_id
        WHERE cart.id = :id');

        $statement->bindParam(':id', $id, PDO::PARAM_INT);
        $statement->setFetchMode(PDO::FETCH_ASSOC);
        $statement->execute();

        $cart = new Cart();

        $rows = $statement->fetchAll();

        if (count($rows) == 0) {
            throw new \Exception();
        }

        foreach ($rows as $row) {
            $cart->addCartItem(new CartItem($row['quantity'], $row['name'], $row['price']));
        }
        return $cart;
    }
}

