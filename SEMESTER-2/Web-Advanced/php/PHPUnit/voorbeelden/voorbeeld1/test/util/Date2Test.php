<?php

use util\Date;
use PHPUnit\Framework\TestCase;
class Date2Test extends TestCase
{

    /**
    * @dataProvider providerLeapYears
    **/
    public function testIsLeapYear_leapYear_true($day,$month,$year)
    {
        $date=Date::of($day,$month,$year);
        $this->assertTrue($date->isLeapYear());
    }

    public function providerLeapYears()
    {
        return array(
            array(1,1,1904),
            array(1,1,1908),
            array(1,1,1912),
            array(1,1,2000),
            array(1,1,2400),
            array(1,1,2800),
        );
    }

 }
