function contextInterpreter(input) {
    const inputMap = {
        //Ainda não definido.
    };
    return inputMap.hasOwnProperty(input) ? inputMap[input]() : Cypress.env(input);   
};

export { contextInterpreter };