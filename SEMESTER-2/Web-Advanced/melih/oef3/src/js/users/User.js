"use strict";
// naam: Melih Ozcan
export default class User {

    constructor(name) {
        if (typeof name == 'string' && name.length > 3) {
            this._name = name;
        } else {
            throw new Error("Error")
        }
    }

    toString()
    {
        return '(' + this._name + ')';
    }
}
