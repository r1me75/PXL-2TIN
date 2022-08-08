"use strict";
// naam: Muhammet Tasci
export default class User {
    #_name;
    constructor(name) {
        if (typeof name === 'string' && name.length > 3) {
            this.#_name = name;
        } else {
            throw new Error();
        }
    }
    toString() {
        return `(${this.#_name})`
    }
}
