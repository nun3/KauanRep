import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'

Given(`que clico no botão Novo no cabeçalho do formulário`, cy.clickNewInFormButton);

Given(`que clico no botão Salvar no cabeçalho do formulário`, cy.clickSaveButtonInForm);
When(`que clico no botão Salvar no cabeçalho do formulário`, cy.clickSaveButtonInForm);
Then(`que clico no botão Salvar no cabeçalho do formulário`, cy.clickSaveButtonInForm);

Then('armazeno o valor do ID na tela de formulário', cy.getAndSaveToIntCurrentFormId);
