"use strict";

import Game from './game/Game';
import RandomGenerator from './util/RandomGenerator';

window.addEventListener('load', (event) => {
    let randomGenerator = new RandomGenerator();
    let game = new Game( randomGenerator );
    let result = "";
    for(let i=0;i<10;i++){
        result=result+game.throwDice( 2 ) +'\n';
    }
    let preElement=document.createElement('pre');
    let textNode=document.createTextNode( result );

    preElement.appendChild(textNode) ;
    document.getElementById('output').appendChild(preElement);
});





