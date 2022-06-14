"use strict";

import Point from './Point';

export default class ColorPoint extends Point {
    constructor(x, y, color) {
        super(x, y);
        this._color = color;
    }
    toString() {
        return `${super.toString()} in ${this._color}`;
    }
}


