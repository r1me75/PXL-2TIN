<?php
//naam: Muhammet Tasci
namespace users;
class UserFactory {
    function makePerson($id, $name): Person
    {
        return new Person($id, $name);
    }

    function makeCompany($id, $businessId): Company
    {
        return new Company($id, $businessId);
    }
}