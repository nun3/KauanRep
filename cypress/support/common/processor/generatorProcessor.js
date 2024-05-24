import {gerarCPF, gerarCNPJ, gerarPalavraAleatoria} from '../utils/generator'

function generatorInterpreter(input) {
    const inputMap = {
      'CPNJ': () => {return gerarCNPJ()},
      'CPF': () => {return gerarCPF()},
    };
    return inputMap.hasOwnProperty(input) && inputMap[input]();   
} 

export { generatorInterpreter };