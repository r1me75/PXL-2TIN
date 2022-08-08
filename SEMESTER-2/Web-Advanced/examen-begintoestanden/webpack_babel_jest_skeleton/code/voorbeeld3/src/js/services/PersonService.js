"use strict";

import PersonRepository from '../repositories/PersonRepository';
export default class PersonService{

    #personRepository;

    constructor( personRepository ){
        if (! (personRepository instanceof PersonRepository)){
            throw new Error('Not a PersonRepository');
        }
        this.#personRepository = personRepository;
    }

    async retrieveNameById(id){
        let person = await this.#personRepository.findById(id);
        return person.name.toUpperCase();
    }

}
