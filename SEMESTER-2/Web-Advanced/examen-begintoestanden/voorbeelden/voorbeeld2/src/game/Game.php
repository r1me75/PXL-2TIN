<?php
namespace game;
use util\RandomGenerator;

class Game{
    private $randomGenerator;

    public function __construct( RandomGenerator $randomGenerator ) {
        $this->randomGenerator = $randomGenerator;
    }

    public function throwDice( int $numberOfDice ){
        if ( $numberOfDice < 2 ) {
            return 0;
        }
        $firstThrow = $this->randomGenerator->next(1, 6);
        for ($i = 1 ; $i < $numberOfDice ; $i++){
            $throw = $this->randomGenerator->next(1, 6);
            if( $throw != $firstThrow){
                return 0;
            }
        }
        return $numberOfDice;
    }
}



