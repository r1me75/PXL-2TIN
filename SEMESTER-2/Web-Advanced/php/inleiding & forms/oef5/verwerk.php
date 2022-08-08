<?php 
// https://ghostbin.com/lmR4i
require_once('faculteit.php');
if(!ctype_digit($_GET['getal'])){
    print("foute ingave");
    exit();
}
$getal=(int)$_GET['getal'];
if($getal<0){
    print("foute ingave");
    exit();
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>faculteit</title>
</head>
<body>
<?php
    $faculteit = faculteit($getal); 
    print( "faculteit($getal)=$faculteit" );
?>
</body>
</html>



