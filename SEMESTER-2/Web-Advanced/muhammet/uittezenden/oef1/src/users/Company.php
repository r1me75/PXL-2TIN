<?php
//naam: Muhammet Tasci
namespace users;

class Company extends User {
    private string $businessId;

    public function __construct($id, $businessId)
    {
        parent::__construct($id);
        if (!is_string($businessId)) {
            throw new \InvalidArgumentException('BusinessId must be a string');
        }
        if (strlen($businessId) != 6) {
            throw new \InvalidArgumentException('BusinessId must consist of 6 characters');
        }
        $this->businessId = $businessId;
    }
    public function __toString(): string
    {
        return parent::__toString() . "_{$this->businessId}";
    }
}