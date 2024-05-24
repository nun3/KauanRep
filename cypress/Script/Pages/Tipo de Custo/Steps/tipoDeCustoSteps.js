import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';
import tipoCustoActions from '../Actions/tipoDeCustoActions';

When(`preencho o campo {string} com o valor {string} na tela de Tipo de Custo`, (param, valor) => {
    tipoCustoActions.fillField(param, valor);
});

When(`seleciono o campo {string} com o valor {string} na tela de Tipo de Custo`, (param, valor) => {
    tipoCustoActions.selectOption(param, valor);
});

Then(`armazeno o valor do ID na tela de Tipo de Custo`, () => {
    tipoCustoActions.saveId();
});

Given('que acessei o formulário de Tipo de Custo', () => {
    tipoCustoActions.CheckItemForm();
});