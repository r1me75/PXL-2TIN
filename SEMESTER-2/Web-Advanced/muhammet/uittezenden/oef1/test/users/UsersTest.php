<?php
use users\Person;
use PHPUnit\Framework\TestCase;

class UsersTest extends TestCase
{
    public function testPersonConstructor_invalidParameter_throwsInvalidArgumentException() {
        $this->expectException("InvalidArgumentException");
        $this->expectExceptionMessage("Id");
        $person = new Person("mis", "geert");
    }
    public function testPersonConstructor_createsOfObjectClass() {
        $person = new Person(1, "geert");
        $this->assertInstanceOf(Person::class, $person);
    }
    public function testPersonToString() {
        $person = new Person(2, "geert");
        $this->assertStringContainsString("2", $person.$this->toString());
        $this->assertStringContainsStringIgnoringCase("Geert", $person.$this->toString());
    }
}
