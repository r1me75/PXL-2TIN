<?php
//naam: Emir Ozdemir

final class UserFactory {
    public static function makePerson($id, $name) {
        return new Person($id, $name);
    }

    public static function makeCompany($id, $businessId) {
        return new Company($id, $businessId);
    }
}