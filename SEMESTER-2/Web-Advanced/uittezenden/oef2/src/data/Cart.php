<?php 
// naam: Emir Ozdemir
namespace data;
class Cart {

    private $cartItems;

    public function __construct(){
        // maak van de eigenschap $cartItems een lege arry
        $this->cartItems = array();
        // TODO
        // $this->cartItems = []; testen
    }

    public function addCartItem(CartItem $cartItem){
        // voeg $cartItem toe aan de eigenschap $cartItems
        $this->cartItems[] = $cartItem;

    }

    public function getNumberOfCartItems():int{
        // geef het aantal waarden in de eigenschap $cartItems
        return count($this->cartItems);
    }

    public function getCartItem(int $i):CartItem{
        // de i'e waarde uit de eigenschap $cartItems terug
        return $this->cartItems[$i];
    }
}

