<?php
require_once 'vendor/autoload.php';

use database\PersonRepository;
use database\DatabaseException;
$user = 'root';
$password = '';
$database = 'persondb';
$server = '127.0.0.1';
$pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password);
$pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

try{
    $personRepository = new PersonRepository($pdo);
    $person = $personRepository->findPersonById(1);
    print("Hallo, " . $person->getName());
} catch (DatabaseException $exception){
    print($exception->getMessage());
}




