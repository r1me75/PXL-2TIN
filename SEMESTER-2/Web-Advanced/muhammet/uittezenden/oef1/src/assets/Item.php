<?php
//naam: Muhammet Tasci
use identifiable\Identifiable;
use users\User;

class Item extends Identifiable implements HasBorrower {

    private User $borrower;
    private array $previousBorrower;
    public function __construct($id, $borrower)
    {
        parent::__construct($id);
        $this->borrower = $borrower;
        $this->previousBorrower = array();
    }

    public function setBorrower(User $user)
    {
        $this->previousBorrower[] = $user;
        $this->borrower = $user;
    }

    public function getBorrower(): User
    {
        return $this->borrower;
    }

    public function getPreviousBorrowers(): array
    {
        return $this->previousBorrower;
    }
    public function __toString(): string
    {
        $print = implode(',', $this->previousBorrower);
        return parent::__toString() . "#{$this->getBorrower()}[$print]\n";
    }
}