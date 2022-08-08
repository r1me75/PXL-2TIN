<?php
use util\Date;
use PHPUnit\Framework\TestCase;


class Date3Test extends TestCase{

    /**
     * @dataProvider providerValidDates
     **/
    public function testOf_validDayMonthYear_dateObject($day,$month,$year)
    {
        $date=Date::of($day,$month,$year);
        $this->assertInstanceOf(Date::class, $date);
    }

   public function providerValidDates()
    {
        return array(
            array(1,1,2000),
            array(31,1,2000),
            array(29,2,2000)
        );
    }

    /**
     * @dataProvider providerInvalidDates
    **/
    public function testOf_inValidDate_exception($day,$month,$year){
        $this->expectException(Exception::class);
        $date=Date::of($day,$month,$year);
    }

    public function providerInvalidDates()
    {
        return array(
            array(1,-1,2000),
            array(32,1,2000),
            array(30,2,2000),
            array(29,2,2001),
            array(1,-1,2000),
            array(1,13,2000),
        );
    }
}
