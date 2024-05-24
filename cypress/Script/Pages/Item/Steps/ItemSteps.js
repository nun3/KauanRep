import { When, Then } from 'cypress-cucumber-preprocessor/steps';
import itemActions from '../Actions/ItemActions'

When(`preencho o campo {string} com o valor {string} na tela de Item`, (param, valor) => {
    itemActions.fillField(param, valor)
});

When(`seleciono o campo {string} com o valor {string} na tela de Item`, (param, valor) => { 
    itemActions.selecionarOpcao(param, valor) 
});

Then(`armazeno o valor do ID na tela de Item`, () => { 
    itemActions.saveId() 
});

Then(`visualizo a seguinte mensagem de sucesso {string}`, (message) => { 
    itemActions.checkSucessMessage(message) 
});


