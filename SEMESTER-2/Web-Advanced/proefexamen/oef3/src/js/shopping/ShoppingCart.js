"use strict";
// naam: Emir Ozdemir
import User from '../users/User';

export default class ShoppingCart {
  constructor(user) {
    if (! (user instanceof User)) {
      throw new Error("de parameter user is geen object van de klasse User");
    }

    this._user = user;
    this._items = [];
  }

  calculatePrice() {
    let sum = 0;
    for (const item of this._items) {
      sum += item.getPrice();
    }

    return sum;
  }

  addItem(item) {
    this._items.push(item);
  }

  toString() {
    // Gebruikt default .toString();
    return `${this._user} [${this._items.join(",")}]`;
  }
}

