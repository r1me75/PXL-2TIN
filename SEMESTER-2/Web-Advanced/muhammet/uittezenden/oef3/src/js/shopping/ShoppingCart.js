"use strict";
// naam: Muhammet Tasci
import User from "../users/User";

export default class ShoppingCart {
    #_user;
    #_items;
    constructor(user) {
        if (!(user instanceof User)) {
            throw new Error("the user must be of an User object!");
        }
        this.#_user = user;
        this.#_items = [];
    }

    calculatePrice() {
        let totalPrice = 0;
        this.#_items.forEach((item) => totalPrice += item.getPrice());
        return totalPrice;
    }
    addItem(item) {
        this.#_items.push(item);
    }

    toString() {
        let stringPrices = "";
        this.#_items.forEach((item) => stringPrices += item.toString() + ',');
        return `${this.#_user.toString()} [${stringPrices}]`
    }
}

