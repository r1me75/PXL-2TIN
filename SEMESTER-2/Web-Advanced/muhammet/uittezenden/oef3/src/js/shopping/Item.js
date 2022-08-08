"use strict";
// naam: Muhammet Tasci
export default class Item {
    #_id;
    #_price;
    constructor(id, price) {
        this.#_id = id;
        this.#_price = price;
    }

    get getPrice() {
        return this.#_price;
    }

    toString() {
        return `${this.#_id}_${this.#_price}`
    }
}
