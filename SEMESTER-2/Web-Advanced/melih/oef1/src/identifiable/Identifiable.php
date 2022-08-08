<?php
//naam: Melih Ozcan
namespace identifiable;

use InvalidArgumentException;

abstract class Identifiable
{
    private $id;
    private static $usedIds;

    public function __construct($id)
    {
        if (!is_int($id) || $id <= 0) {
            throw new InvalidArgumentException("Arguments are invalid");
        }
        $this->id = $id;
        self::$usedIds[] = $id;
    }

    public function __toString(): string
    {
        return $this->id;
    }


}