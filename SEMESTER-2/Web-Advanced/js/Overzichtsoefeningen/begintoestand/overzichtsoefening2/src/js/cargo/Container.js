"use strict";
// naam: Emir Ozdemir
import Product from "./Product";
export default class Container {
  constructor(maxWeight) {
    if (typeof maxWeight != "number" && number < 1) {
      throw new Error("maxWeight is geen number groter dan 0");
    }

    this._maxWeight = maxWeight;
    this._products = [];
  }

  addProduct(product) {
    let sum = product.weight;
    const isProduct = product instanceof Product;

    if (!isProduct) throw new Error("Argument is geen Product");

    for (let item of this._products) {
      if (item.id === product.id) {
        throw new Error("Product bestaat al!");
      }
      sum += item.weight;
    }

    if (sum >= this._maxWeight) {
      throw new Error("Te zwaar geladen");
    }
    this._products.push(product);
  }

  getProductAtIndex(index) {
    if (
      !Number.isInteger(index) &&
      index < 1 &&
      index < this._products.length
    ) {
      throw new Error("Index voldoet niet aan de voorwaarden");
    }

    return this._products[index];
  }
}
