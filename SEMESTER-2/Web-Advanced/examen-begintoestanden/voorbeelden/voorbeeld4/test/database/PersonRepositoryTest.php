<?php


use database\PersonRepository;
use PHPUnit\Framework\TestCase;
class PersonRepositoryTest extends TestCase
{

    public function setUp() : void
    {
        $user = 'root';
        $password = '';
        $database = 'testpersondb';
        $server = '127.0.0.1';
        $this->pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password);
        $this->pdo->setAttribute(
            PDO::ATTR_ERRMODE,
            PDO::ERRMODE_EXCEPTION
        );
        $this->pdo->exec('DROP TABLE IF EXISTS person');
        $this->pdo->exec('CREATE TABLE person (
                        id INT, 
                        name VARCHAR(255),
                        PRIMARY KEY (id)
                   )');

        $persons=$this->providerPersons();
        foreach($persons as $person){
            $this->pdo->exec("INSERT INTO person (id, name) VALUES (".
                 $person['id'].",'".$person['name']."');");
        }
    }

    public function tearDown() : void
    {
        $user = 'root';
        $password = '';
        $database = 'testpersondb';
        $server = '127.0.0.1';
        $this->pdo = new PDO("mysql:host=$server;dbname=$database", $user, $password);
        $this->pdo->setAttribute(
            PDO::ATTR_ERRMODE,
            PDO::ERRMODE_EXCEPTION
        );
        $this->pdo->exec('DROP TABLE IF EXISTS persons');
        $this->pdo = null;
    }

    public function providerPersons()
    {
        return [
                   ['id'=>1,'name'=>'testname1'], 
                   ['id'=>2,'name'=>'testname2'],
                   ['id'=>3,'name'=>'testname3']
               ];
    }

    /**
     * @dataProvider providerPersons
    **/
    public function testFindPersonByID_personInDatabase_person($id, $name)
    {
        $personRepository=new PersonRepository($this->pdo);
        $actualPerson=$personRepository->findPersonByID($id);
        $this->assertInstanceOf(Person::class, $actualPerson);
        $this->assertEquals($name, $actualPerson->getName());
        $this->assertEquals($id, $actualPerson->getId());
    }

    public function testFindPersonByID_personNotInDatabase_null()
    {
        $personRepository=new PersonRepository($this->pdo);
        $actualPerson=$personRepository->findPersonByID(100);
        $this->assertNull($actualPerson);
    }

    public function testFindPersonByID_pdoException_DatabaseException()
    {
        $this->expectException(DatabaseException::class);
        $this->pdo->exec('DROP TABLE person');
        $personRepository=new PersonRepository($this->pdo);
        $actualPerson=$personRepository->findPersonByID(1);
    }

}
