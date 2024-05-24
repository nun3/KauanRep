import { Given } from 'cypress-cucumber-preprocessor/steps';

Given(`clico no botão Filtrar na tela de Filtros`, cy.clickSubmitButtonInFilterScreen);

Given(`preencho o campo {string} com valor {string} na tela de Filtros`, cy.fillFieldsInFilterScreen);

Given(`preencho com o valor {string} o campo {string} selecionando a opção {string} na tela de filtros`, cy.fillFieldSelectItemFilterScreen);