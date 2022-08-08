"use strict";
// naam: Emir Ozdemir
import Word from './Word';

export default class Game{

    constructor(word) {
        if (! (word instanceof Word)) {
            throw new Error("Argument word is niet van de klasse Word");
        }
        this._searchWord = word;
        this._guesses = [];
    }

    addGuess(word){
        if (! (word instanceof Word)) {
            throw new Error("Argument word is niet van de klasse Word");
        }
        if (this.numberOfGuesses > 4) {
            throw new Error("Er zijn al 5 woorden toegevoegd");
        }

        this._guesses.push(word);
    }

    get numberOfGuesses(){
        return this._guesses.length;
    }

    evaluate(index){
        if (!Number.isInteger(index)) {
            throw new Error("De gegeven argument is geen geheel getal");
        }
        if (index < 0 && index > this.numberOfGuesses - 1) {
            throw new Error(`De argument ligt niet tussen 0 en ${this.numberOfGuesses}`);
        }

        return this._searchWord.evaluate(this._guesses[index]);
    }

}


