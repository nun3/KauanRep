import { When } from 'cypress-cucumber-preprocessor/steps';

When('preencho o campo {string} com o valor gerado {string} na tela', cy.fillFieldWithGeneratedValue);

When('clico na linha com o código gerado {string} no grid do Browser', cy.clickFirstRowGridWithGeneratedValue);

When('excluo a linha com o código gerado {string} no grid do Browser', cy.deleteRowFromGridWithGeneratedValue);

When('preencho o campo {string} com o valor {string}', cy.fillField);

When('seleciono o campo {string} com o valor {string}', cy.selectOption);

When('preencho com o valor {string} o campo {string} selecionando a opção {string}', cy.fillFieldSelectItemDropdown);

