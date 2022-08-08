<?php
//naam: Emir Ozdemir

use http\Exception\InvalidArgumentException;

abstract class Identifiable {
    private $id;
    private static $usedIds = [];

    public function __construct($id)
    {
        if (is_int($id) && $id > 0 && ! in_array($id, self::$usedIds)) {
            $this->id = $id;
            self::$usedIds[] = $id;
        } else {
            throw new InvalidArgumentException();
        }
    }

    public function getId()
    {
        return $this->id;
    }
}