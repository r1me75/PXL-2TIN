"use strict";
// naam: Emir Ozdemir
export default class Product {
  constructor(id, weight) {
    if (!Number.isInteger(id) && id < 1) {
      throw new Error("Id is geen geheel getal groter dan 0");
    }

    if (typeof weight != "number" && weight < 1) {
      throw new Error("Weight is geen getal groter dan 0");
    }
    this._id = id;
    this._weight = weight;
  }

  get id() {
    return this._id;
  }
  get weight() {
    return this._weight;
  }
}
