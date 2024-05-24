function dateInterpreter(input) {
    const inputMap = {
        'DATAATUAL': () => {return new Date().toLocaleDateString('pt-BR')},
        'MESATUAL': () => {return new Date().getMonth() + 1},
        'ANOATUAL': () => {return new Date().getFullYear()},
        '7DIASAPOS': () => {return new Date(new Date().getTime() + 7 * 24 * 60 * 60 * 1000).toLocaleDateString('pt-BR')},
        '15DIASAPOS': () => {return new Date(new Date().getTime() + 15 * 24 * 60 * 60 * 1000).toLocaleDateString('pt-BR')},
        '30DIASAPOS': () => {return new Date(new Date().getTime() + 30 * 24 * 60 * 60 * 1000).toLocaleDateString('pt-BR')},
        '45DIASAPOS': () => {return new Date(new Date().getTime() + 45 * 24 * 60 * 60 * 1000).toLocaleDateString('pt-BR')},
        '60DIASAPOS': () => {return new Date(new Date().getTime() + 60 * 24 * 60 * 60 * 1000).toLocaleDateString('pt-BR')},
        '75DIASAPOS': () => {return new Date(new Date().getTime() + 75 * 24 * 60 * 60 * 1000).toLocaleDateString('pt-BR')},
        '90DIASAPOS': () => {return new Date(new Date().getTime() + 90 * 24 * 60 * 60 * 1000).toLocaleDateString('pt-BR')},
        '120DIASAPOS': () => {return new Date(new Date().getTime() + 120 * 24 * 60 * 60 * 1000).toLocaleDateString('pt-BR')},
        '150DIASAPOS': () => {return new Date(new Date().getTime() + 150 * 24 * 60 * 60 * 1000).toLocaleDateString('pt-BR')}
    };
    return inputMap.hasOwnProperty(input) && inputMap[input]();
};

export { dateInterpreter };