import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';
import valorDeServico from '../Actions/valorDeServicoActions';

When(`preencho o campo {string} com o valor {string} na tela de Composição Valor Serviço`, (param, valor) => {
    valorDeServico.fillField(param, valor);
});

Then(`armazeno o valor do ID na tela de Composição Valor Serviço`, () => {
    valorDeServico.saveId();
});

Given('que acessei o formulário de Composição Valor Serviço', () => {
    valorDeServico.CheckItemForm();
});

When(`marco os checkboxes:`, (dataTable) => {
    dataTable.rawTable.forEach(([checkbox]) => {
        valorDeServico.marcarCheckbox(checkbox);
    });
});