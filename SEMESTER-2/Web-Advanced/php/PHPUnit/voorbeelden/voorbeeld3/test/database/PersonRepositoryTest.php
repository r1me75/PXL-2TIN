<?php
use database\PersonRepository;
use database\Person;
use database\DatabaseException;

use PHPUnit\Framework\TestCase;
class PersonRepositoryTest extends TestCase
{
    public function testFindPersonByID_personInDatabase_person()
    {
        $person=new Person();
        $person->setId(1);
        $person->setName("testperson1");
        $pdoStatement = $this->getMockBuilder(PDOStatement::class)
                            ->getMock();
        $pdoStatement->method('fetchAll')
                   ->willReturn([$person]);
        $pdo= $this->getMockBuilder(PDO::class)
                    ->disableOriginalConstructor()
                    ->getMock();
        $pdo->method('prepare')->willReturn($pdoStatement);
        $personRepository=new PersonRepository($pdo);

        $actualPerson=$personRepository->findPersonByID(1);

        $this->assertInstanceOf(Person::class, $actualPerson);
        $this->assertEquals($person->getName(), $actualPerson->getName());
        $this->assertEquals($person->getId(), $actualPerson->getId());
    }

    public function testFindPersonByID_personNotInDatabase_null()
    {
        $pdoStatement = $this->getMockBuilder(PDOStatement::class)
                            ->getMock();
        $pdoStatement->method('fetchAll')
                        ->willReturn([]);
        $pdo= $this->getMockBuilder(PDO::class)
                    ->disableOriginalConstructor()
                    ->getMock();
        $pdo->method('prepare')->willReturn($pdoStatement);
        $personRepository=new PersonRepository($pdo);

        $actualPerson=$personRepository->findPersonByID(1);

        $this->assertNull($actualPerson);
    }

    public function testFindPersonByID_pdoException_databaseException()
    {
        $this->expectException(DatabaseException::class);

        $pdo= $this->getMockBuilder(PDO::class)
           ->disableOriginalConstructor()
           ->getMock();
        $pdo->method('prepare')
            ->willThrowException(new PDOException());

        $personRepository=new PersonRepository($pdo);
        $actualPerson=$personRepository->findPersonByID(1);
    }

}
