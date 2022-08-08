<?php namespace util;
use \Exception;
class Date
{
    const NUMBER_OF_DAYS_PER_MONTH = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];
    private $day, $month, $year;


    public static function of (int $day, int $month, int $year) : Date
    {
        if( ! self::isValidateDate($day, $month, $year) ) {
            throw new Exception("Invalid date");
        } 
        return new self($day,$month,$year);
    }

    private function __construct(int $day, int $month, int $year)
    {
        $this->year=$year;
        $this->month=$month;
        $this->day=$day;
    }

    private static function isvalidYear(int $year) : bool
    {
        return true;
    }

    private static function isvalidMonth(int $month) : bool
    {
        return $month >= 1 && $month <= 12;
    }

    private static function isvalidDay(int $day) : bool
    {
        return $day >=1 && $day <=31;
    }


    private static function isValidateDate(int $day, int $month, int $year)
    {
        if ( !self::isValidDay($day) || !self::isValidMonth($month) || !self::isValidYear($year) ){
            return false;
        }
        $numberOfDaysOfMonth = self::NUMBER_OF_DAYS_PER_MONTH[$month-1];
        if ( $month==2 && self::isLeap( $year ) ){
            $numberOfDaysOfMonth=29;
        }
        return $day <= $numberOfDaysOfMonth;
    }

    private static function isLeap ( int $year ): bool
    {
        return $year % 4 == 0 && 
            ($year % 100 != 0 || $year % 400 == 0) ;
    }

    public function isLeapYear() : bool
    {
        return self::isLeap($this->year);
    }

    function __toString() : string
    {
        return sprintf ( "%d/%d/%d",
                   $this->day,
                   $this->month,$this->year );
    }
}
