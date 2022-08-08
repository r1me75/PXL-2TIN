<?php
//naam: Emir Ozdemir

class Item extends Identifiable implements HasBorrower {
    private $borrower;
    private $previousBorrowers;

    public function __construct($id, $borrower)
    {
        parent::__construct($id);
        $this->borrower = $borrower;
        $this->previousBorrowers = [];
    }

    public function setBorrower(User $user)
    {
        $this->previousBorrowers[] = $this->borrower;
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

    public function __toString()
    {
        return parent::getId()."#".$this->getId()."_";
    }
}