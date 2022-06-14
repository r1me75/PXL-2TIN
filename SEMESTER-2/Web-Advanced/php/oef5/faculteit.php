<?php
function faculteit(int $getal):int{
    if($getal==0){
        return 1;
    }
    $faculteit=1;
    for($i=1;$i<=$getal;$i++){
        $faculteit=$faculteit*$i;
    }
    return $faculteit;
}
