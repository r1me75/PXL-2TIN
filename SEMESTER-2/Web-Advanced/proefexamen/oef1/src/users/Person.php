<?php
//naam: Emir Ozdemir

use http\Exception\InvalidArgumentException;

class Person extends User {
    private $name;

    public function __construct($id, $name)
    {
        parent::__construct($id);
        if (is_string($name) && (strlen($name) > 3 && strlen($name) < 20)) {
            $this->name = trim($name);
        } else {
            throw new InvalidArgumentException();
        }
    }

    function __toString() {
        return self::getId()."_$this->name";
    }
}