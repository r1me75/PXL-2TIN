<?php
//naam:Melih Ozcan
namespace assets;

interface HasBorrower{
	public function setBorrower(User $user);
	public function getBorrower();
	public function getPreviousBorrowers();
}
