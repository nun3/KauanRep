import { Given, When } from 'cypress-cucumber-preprocessor/steps';

Given(`que clico no botão Novo no cabeçalho de filtro`, cy.clickNewButton);

When(`clico no botão Novo no cabeçalho de filtro`, cy.clickNewButton);

Given(`que clico no botão Filtrar no cabeçalho de filtro`, cy.clickFilterButton);

When(`clico no botão Filtrar no cabeçalho de filtro`, cy.clickFilterButton);

Given(`que clico na linha com o valor {string} no grid do Browser`, cy.clickFirstRowGrid);

When(`clico na linha com o valor {string} no grid do Browser`, cy.clickFirstRowGrid);

When(`excluo a linha com o valor {string} no grid do Browser`, cy.clickExcludeFirstRowGrid);

Given('que acessei a página do formulário {string}', cy.checkItemForm)
