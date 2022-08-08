<?php 
// naam: Emir Ozdemir
namespace data;
class CartItem {

    private $quantity;
    private $price;
    private $name;

    public function __construct(int $quantity, $name, float $price){
        $this->quantity=$quantity;
        $this->price=$price;
        $this->name=$name;
    }

    public function getQuantity():int{
        return $this->quantity;
    }

    public function getPrice():float{
        return $this->price;
    }
    
    public function getName():string{
        return $this->name;
    }

    
}

