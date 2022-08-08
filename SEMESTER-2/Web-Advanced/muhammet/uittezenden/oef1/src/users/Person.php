<?php
//naam: Muhammet Tasci
namespace users;

class Person extends User
{
    private $name;

    public function __construct($id, $name)
    {
        parent::__construct($id);
        if (!is_string($name)) {
            throw new \InvalidArgumentException('Name must be a string');
        }
        if (strlen($name) < 3 || strlen($name) > 20) {
            throw new \InvalidArgumentException('Name must consist minimum 3 and maximum of 20 characters');
        }
        $this->name = $name;
    }

    public function __toString(): string
    {
        return parent::__toString() . "_{$this->name}";
    }
}