<?php namespace util;
class RandomGenerator
{

    public function next( int $min, int $max ):int{
        return random_int( $min, $max );
    }
}

