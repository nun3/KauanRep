import { When } from 'cypress-cucumber-preprocessor/steps';
import OperacaoFiscalActions from '../Actions/operacaoFiscalActions';

When('gero um código aleatório na tela de Operação Fiscal', () => {
    OperacaoFiscalActions.gerarCodigoAleatorio();
});

When('preencho o campo {string} com o valor {string} na tela de Operação Fiscal', (param, valor) => {
    OperacaoFiscalActions.fillField(param, valor);
});

When(`seleciono o campo {string} com o valor {string} na tela de Operação Fiscal`, (param, valor) => {
    OperacaoFiscalActions.selecionarOpcao(param, valor);
});

When(`marco os checkboxes:`, (dataTable) => {
    dataTable.rawTable.forEach(([checkbox]) => {
        OperacaoFiscalActions.marcarCheckbox(checkbox);
    });
});