import { generatorInterpreter } from '../generatorProcessor';
import { dateInterpreter } from '../dateProcessor';
import { contextInterpreter } from '../contextProcessor';

function genericInterpreter(input) {
    if (!(input.startsWith("[") && input.endsWith("]"))) return input;

    const [_, group, treatInput] = input.match(/\[(.*?)=(.*?)\]/);
    const inputMap = {
        'CONTEXTO': () => contextInterpreter(treatInput),
        'DATA': () => dateInterpreter(treatInput),
        'GERAR': () => generatorInterpreter(treatInput),
    };

    return inputMap.hasOwnProperty(group) && inputMap[group]();
}

export { genericInterpreter };