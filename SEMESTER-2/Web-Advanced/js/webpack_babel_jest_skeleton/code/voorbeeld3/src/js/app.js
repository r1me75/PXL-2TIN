"use strict";

import PersonService from './services/PersonService';
import PersonRepository from './repositories/PersonRepository';

window.addEventListener('load', async (event) => {
    let personRepository  = new PersonRepository();
    let personService= new PersonService(personRepository);
    let name = await personService.retrieveNameById(1);
    let preElement=document.createElement('pre');
    let textNode=document.createTextNode( name );
    preElement.appendChild(textNode) ;
    document.getElementById('output').appendChild(preElement);

});





