<?php
//naam: Muhammet Tasci
use users\User;

interface HasBorrower{
	public function setBorrower(User $user);
	public function getBorrower();
	public function getPreviousBorrowers();
}
