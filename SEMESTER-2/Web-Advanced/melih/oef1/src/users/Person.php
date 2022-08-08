<?php
//naam: Melih Ozcan

namespace users;

use InvalidArgumentException;

class Person extends User
{
    public $name;

    public function __construct($id, $name)
    {
        parent::__construct($id);
        if (strlen($name) <= 3 || strlen($name) >= 20) {
            throw new InvalidArgumentException("Invalid Argument");
        }
        $this->name = trim($name);
    }

    public function __toString() : string
    {
        return  parent::__toString() . "_" . $this->name;
    }


}