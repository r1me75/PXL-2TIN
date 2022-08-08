<?php
//naam: Muhammet Tasci
namespace identifiable;

abstract class Identifiable {
    private int $id;
    static array $usedIds = array();

    function __construct($id)
    {
        if (!is_int($id))
        {
            throw new \InvalidArgumentException('Id must be an integer');
        }
        if (in_array($id, self::$usedIds))
        {
            throw new \InvalidArgumentException('Id is already used');
        }
        $this->id = $id;
        self::$usedIds[] = $id;
    }
    public function __toString(): string
    {
        return "{$this->id}";
    }
}