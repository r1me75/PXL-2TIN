"use strict";

import axios from "axios";

const url = 'http://localhost:3000/persons/';

export default class PersonRepository{
    async findById(id){
        if(!Number.isInteger(id) ||  id<=0){
            throw new Error();
        }
        const response = await axios.get(`${url}${id}`);
        return response.data;
    }
}

