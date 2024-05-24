// Comando personalizado para preencher campos na tela de filtro
Cypress.Commands.add('fillFieldsInFilterScreen', (fieldReference, fieldValue) => {
    // Loga o valor atual de idGlobal definido no arquivo cypress.env.json
    cy.log(Cypress.env('idGlobal'));
    
    // Verifica se o valor do campo é 'CONTEXTO[IDGLOBAL]'; se sim, substitui pelo valor de idGlobal
    fieldValue = fieldValue === '[CONTEXTO=IDGLOBAL]' ? Cypress.env('idGlobal') : fieldValue;
    
    // Loga o valor final do campo após a verificação
    cy.log(fieldValue);
    
    // Encontra o campo na tela de filtro pelo rótulo, verifica se está visível e preenche com o valor fornecido
    cy.get('.p-sidebar-content')
        .find('label')
        .contains(fieldReference)
        .should('be.visible') // Verifica se o campo está visível
        .type(fieldValue); // Preenche o campo com o valor fornecido
});

// Comando personalizado para clicar no botão de envio na tela de filtro
Cypress.Commands.add('clickSubmitButtonInFilterScreen', () => {
    // Espera 200ms antes de interagir com o elemento
    cy.wait(200);
    
    // Encontra o botão de envio na tela de filtro, verifica se está visível e clica nele
    cy.get('.p-sidebar-content')
        .find('.btn-confirm')
        .contains('Filtrar') // Verifica se o botão contém o texto 'Filtrar'
        .click(); // Clica no botão de envio
});

Cypress.Commands.add('fillFieldSelectItemFilterScreen', (value, fieldName, SelectOption) => {
    cy.get('.p-sidebar-content') // Encontra o container principal
      .find('label') // Encontra todos os labels dentro do container
      .contains(fieldName) // Localiza o label específico com o texto fornecido
      .siblings('p-autocomplete') // Encontra o campo de entrada associado ao label
      .should('be.visible')
      .type('{selectall}{backspace}') // Limpa o conteúdo atual do campo
      .type(value); // Digita o valor atualizado no campo

    cy.get('.p-autocomplete-panel').within(() => {
      cy.get('[role="listbox"]') // Procura pelo role 'listbox' dentro de .p-autocomplete-panel
        .contains('option', 'SelectOption') // Procura pelo texto da opção especificada dentro do 'listbox'
        .should('be.visible').click();
    });
  });