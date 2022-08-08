<?php
namespace database;
use \PDO;
use \PDOException;


class PersonRepository{
    private $pdo;

    public function __construct( PDO $pdo ) {
        $this->pdo = $pdo;
    }

    public function findPersonById( int $id ) : ?Person {
        try{
            $statement = $this->pdo->prepare('SELECT * FROM person where id = ?');
            $statement->bindParam(1,$id);
            $statement->execute();
            $persons = $statement->fetchAll(PDO::FETCH_CLASS,Person::class);
            if (count($persons)==0){
                return null;
            }
            return $persons[0];
        } catch (PDOException $exception){
            throw new DatabaseException();
        }
    }
}


