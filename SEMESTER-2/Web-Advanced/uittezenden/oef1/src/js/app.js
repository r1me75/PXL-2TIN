"use strict";

import Word from './lingo/Word';
import Game from './lingo/Game';

let word=new Word("woord");
let word2=new Word("water");
let word3=new Word("wreed");
let word4=new Word("woest");
let word5=new Word("waard");
let word6=new Word("woord");

console.log(word.evaluate(word2));
console.log(word.evaluate(word3));
console.log(word.evaluate(word4));
console.log(word.evaluate(word5));
console.log(word.evaluate(word6));

let game = new Game(word);
game.addGuess(word2);
game.addGuess(word3);
game.addGuess(word4);
game.addGuess(word5);
game.addGuess(word6);

for (let i = 0 ; i < game.numberOfGuesses; i++){
    document.write(game.evaluate(i)+'<br>');
}




