"use strict";
// naam: Emir Ozdemir

export default class Item {
  constructor(id, price) {
    this._id = id;
    this._price = price;
  }

  getPrice() {
    return this._price;
  }

  toString() {
    return `${this._id}_${this._price}`;
  }
}

