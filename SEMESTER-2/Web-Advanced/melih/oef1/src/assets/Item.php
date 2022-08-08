<?php
//naam: Melih Ozcan
namespace assets;

use identifiable\Identifiable;

class Item extends Identifiable implements HasBorrower
{

    private $borrower;
    private $previousBorrowers;

    public function __construct($id, $borrower)
    {
        parent::__construct($id);
        $this->borrower = $borrower;
        $this->previousBorrowers = [];
        $this->setBorrower($borrower);
    }


    public function setBorrower($user)
    {
        if (!in_array($user, $this->previousBorrowers))
        {
            $this->previousBorrowers[] = $user;
        }
        $this->borrower = $user;
    }

    public function getBorrower()
    {
        return $this->borrower;
    }

    public function getPreviousBorrowers()
    {
        return $this->previousBorrowers;
    }

    public function __toString() : string
    {
        $outputOfArray = '';
        if (count($this->getPreviousBorrowers()) > 0)
        {
            $outputOfArray .= '[';
            for ($i = 0; $i < count($this->getPreviousBorrowers()); $i++)
            {
                $outputOfArray .= $this->getPreviousBorrowers()[$i] . ',';
            }
            $outputOfArray = substr($outputOfArray, 0, strlen($outputOfArray) - 1);
            $outputOfArray .= ']';
        }

        return parent::__toString() . '#' . $this->getBorrower() . $outputOfArray . '</br>';

    }


}