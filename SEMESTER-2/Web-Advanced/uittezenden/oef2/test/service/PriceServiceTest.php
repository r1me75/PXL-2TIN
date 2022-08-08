<?php
// naam: Emir Ozdemir
use PHPUnit\Framework\TestCase;
use data\Cart;
use data\CartItem;
use service\PriceService;

class PriceServiceTest extends TestCase
{
    public function setUp(): void
    {
        $this->cart = new Cart();
    }

    public function testCalculatePrice_sumLessThan20_addsDeliveryFee() {
        $cartItem1 = new CartItem(3, "item1", 1.2);
        $cartItem2 = new CartItem(4, "item2", 1);
        $expectedPrice = 11.6;

        $this->cart->addCartItem($cartItem1);
        $this->cart->addCartItem($cartItem2);

        $this->assertEquals($expectedPrice, PriceService::calculatePrice($this->cart));
    }

    public function testCalculatePrice_sumMoreThan20_addsPromotion() {
        $cartItem1 = new CartItem(2, "item1", 2.21);
        $cartItem2 = new CartItem(1, "item2", 22.33);
        $expectedPrice = 24.54;

        $this->cart->addCartItem($cartItem1);
        $this->cart->addCartItem($cartItem2);

        $this->assertEquals($expectedPrice, PriceService::calculatePrice($this->cart));
    }

    public function testCalculatePrice_sumIs20_addsPromotionWithoutDeliveryFee() {
        $cartItem1 = new CartItem(1, "item1", 1);
        $cartItem2 = new CartItem(1, "item2", 20);
        $expectedPrice = 20.0;

        $this->cart->addCartItem($cartItem1);
        $this->cart->addCartItem($cartItem2);

        $this->assertEquals($expectedPrice, PriceService::calculatePrice($this->cart));
    }

    public function testCalculatePrice_emptyCart_throwsException() {
        $this->expectException("Exception");
        $this->expectExceptionMessage("Er zijn geen cart items aanwezig");

        PriceService::calculatePrice($this->cart);
    }
}
