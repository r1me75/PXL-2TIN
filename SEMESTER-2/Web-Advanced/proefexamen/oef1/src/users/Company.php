<?php
//naam: Emir Ozdemir

use http\Exception\InvalidArgumentException;

class Company extends User {
    private $businessId;

    public function __construct($id, $businessId)
    {
        parent::__construct($id);

        if(is_string($businessId) && strlen($businessId) == 6) {
            $this->businessId = $businessId;
        } else {
            throw new InvalidArgumentException();
        }
    }

    public function __toString()
    {
        return self::getId()."_$this->businessId";
    }
}