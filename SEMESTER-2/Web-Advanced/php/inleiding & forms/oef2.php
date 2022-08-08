<?php 

function maakRij( int $start, int $stop, int $step = 1 ) : array{
    $generatedArray = [];
    if( $start <= $stop ){
        for( $i = $start; $i <= $stop; $i = $i + $step ) {
            $generatedArray[] = $i;
        }
    } else{
        for( $i = $start; $i >= $stop; $i = $i + $step ) {
            $generatedArray[] = $i;
        }
    }
    return $generatedArray;
}


$a = maakRij(5,1,-2);
var_dump($a);

