"use strict";

export default class RandomGenerator{
    constructor(){}

    next(min, max){
        return Math.floor(min + ( max - min ) * Math.random());
    }
}

