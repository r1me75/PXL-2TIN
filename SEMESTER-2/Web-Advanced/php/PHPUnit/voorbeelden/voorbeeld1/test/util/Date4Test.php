<?php
use util\Date;
use PHPUnit\Framework\TestCase;
class Date4Test extends TestCase{

    /**
     * @dataProvider providerValidDates
     **/
    public function testToString_validDayMonthYear_correctOutput($day,$month,$year)
    {
        $date=Date::of($day,$month,$year);
        $output=$date->__toString();
        $expectedOutput = sprintf ( "%d/%d/%d",  $day, $month,$year );
        $this->assertEquals($expectedOutput, $output);
    }

   public function providerValidDates()
    {
        return array(
            array(1,1,2000),
            array(31,1,2000),
            array(29,2,2000)
        );
    }

}
