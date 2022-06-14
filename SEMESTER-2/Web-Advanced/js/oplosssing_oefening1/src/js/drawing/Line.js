"use strict";
import Point from './Point';

export default class Line {
    constructor(point1, point2) {
        if (!(point1 instanceof Point)) {
        // typeof point1 === 'Point' werkt niet (typeof point = 'object')
        // !point instanceof Point   werkt niet: 
        // !point --> boolean, boolean is geen Point
            throw new Error("point1 not a point");
        }
        if (!(point2 instanceof Point)) {
            throw new Error("point2 not a point");
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
        return `Line ${this._point1.toString()}-${this._point2.toString()}`;
    }
}
