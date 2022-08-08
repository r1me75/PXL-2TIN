<?php
//naam: Emir Ozdemir
interface HasBorrower{
	public function setBorrower(User $user);
	public function getBorrower();
	public function getPreviousBorrowers();
}
