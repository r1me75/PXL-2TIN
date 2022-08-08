"use strict";
// naam: Melih Ozcan
import User from "../users/User";

export default class ShoppingCart {
    constructor(user) {
        if (!user instanceof User) {
            throw new Error("Wrong type. Not type user");
        }
        this._user = user;
        this._items = [];
    }

    calculatePrice() {
        let sum = 0;
        for (let i = 0; i < this._items; i++) {
            sum += this._items[i]._price;
        }
        return sum;
    }

    toString()
    {
        //DRY
        let output = "[";
        for (let i = 0; i < this._items.length; i++) {
            output += this._items[i].toString() + ",";
        }
        output = output.substring(0, output.length - 1)
        output += "]";
        return this._user + output;
    }

    addItem(item) {
        this._items.push(item);
    }
}