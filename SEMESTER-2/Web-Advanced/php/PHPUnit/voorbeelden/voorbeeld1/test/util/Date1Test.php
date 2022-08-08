<?php

use util\Date;
use PHPUnit\Framework\TestCase;
class Date1Test extends TestCase
{
    public function testIsLeapYear_leapYear_true()
    {
        $date=Date::of(1,1,2000);
        $this->assertTrue($date->isLeapYear());
    }

    public function testIsLeapYear_notALeapYear_false()
    {
        $date=Date::of(1,1,2001);
        $this->assertFalse($date->isLeapYear());
    }
}


