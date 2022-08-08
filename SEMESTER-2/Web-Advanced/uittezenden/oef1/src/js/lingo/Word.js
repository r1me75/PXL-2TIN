"use strict";
// naam: Emir Ozdemir

export default class Word {
    constructor(word) {
        if (typeof word != 'string') {
            throw new Error("Argument word is geen string!");
        }
        if (word.length !== 5) {
            throw new Error("De lengte van de argument word is niet 5!");
        }
        this._word = word;
    }


    evaluate(guessWord){
        if (! (guessWord instanceof Word)) {
            throw new Error("Argument guessWord is geen object van de klasse Word");
        }
        const guess = guessWord._word;
        let score = "";


        for (let i = 0; i < guess.length; i++) {
            if (guess[i] === this._word[i]) {
                score += "R";
            } else if (this._word.indexOf(guess[i]) > -1) {
                score += "Y";
            } else {
                score += ".";
            }
        }
        return score;
    }
}
