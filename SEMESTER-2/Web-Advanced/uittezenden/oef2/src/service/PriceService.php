<?php 
// naam: Emir Ozdemir
namespace service;
use data\Cart;

class PriceService{
    public static function calculatePrice(Cart $cart): float {
        if ($cart->getNumberOfCartItems() == 0) {
            throw new \Exception("Er zijn geen cart items aanwezig");
        }

        $sum = 0;
        // initialiseer laagste prijs als de prijs van de eerste item
        $laagste = $cart->getCartItem(0)->getPrice();

        for ($i = 0; $i < $cart->getNumberOfCartItems(); $i++) {
            $cartItem = $cart->getCartItem($i);
            $price = $cartItem->getPrice();

            // Laagste prijs
            if ($price < $laagste) {
                $laagste = $price;
            }
            $sum += $price * $cartItem->getQuantity();
        }

        $sum -= $laagste;

        if ($sum < 20) {
            $sum += 5;
        }

        return $sum;
    }
}
