"use strict";

import Point from './drawing/Point';
import Line from './drawing/Line';


let point1 = new Point(1, 2);
let point2 = new Point(2, 3);
console.log(point1.toString());
console.log(point2.toString());
console.log(new Line(point1, point2).toString());

try {
    console.log(new Line(1, point2).toString());
} catch (e) {
    console.log(e);
}
