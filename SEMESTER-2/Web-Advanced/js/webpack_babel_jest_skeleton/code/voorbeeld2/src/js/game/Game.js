"use strict";

import RandomGenerator from '../util/RandomGenerator';
export default class Game{
    #randomGenerator;
    constructor( randomGenerator ){
        if (! (randomGenerator instanceof RandomGenerator)){
            throw new Error('Not a RandomGenerator');
        }
        this.#randomGenerator = randomGenerator;
    }

    throwDice( numberOfDice ){
        if (!Number.isInteger(numberOfDice)) {
            throw new Error('Not an integer');
        }

        if ( numberOfDice < 2 ) {
            return 0;
        }
        let firstThrow = this.#randomGenerator.next(1, 6);
        for (let i = 1 ; i < numberOfDice ; i++){
            let newThrow = this.#randomGenerator.next(1, 6);
            if( newThrow != firstThrow){
                return 0;
            }
        }
        return numberOfDice;
    }
}



