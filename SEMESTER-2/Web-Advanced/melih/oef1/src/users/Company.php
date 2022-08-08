<?php
//naam: Melih Ozcan

namespace users;

use InvalidArgumentException;
use users\User;

class Company extends User
{
    public $businessId;

    public function __construct($id, $businessId)
    {
        parent::__construct($id);
        if (!is_string($businessId) || strlen($businessId) != 6)
        {
            throw new InvalidArgumentException("Invalid Arguments");
        }
        $this->businessId = $businessId;
    }

    public function __toString() : string
    {
        return parent::__toString() . "_" . $this->businessId;
    }


}