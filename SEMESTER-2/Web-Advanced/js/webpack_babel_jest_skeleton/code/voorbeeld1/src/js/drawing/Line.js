"use strict";
import Point from "./Point";

export default class Line {
  constructor(point1, point2) {
    if (!(point1 instanceof Point) && !(point2 instanceof Point)) {
      throw new Error("Argumenten zijn geen Point");
    }
    this._point1 = point1;
    this._point2 = point2;
  }

  get point1() {
    return this._point1;
  }
  get point2() {
    return this._point2;
  }

  toString() {
    return `point 1: ${this._point1}, point 2: ${this._point2})`;
  }
}
