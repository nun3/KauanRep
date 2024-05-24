// Comando personalizado para clicar no botão de confirmação em um diálogo de confirmação
Cypress.Commands.add('clickInDialogConfirmation', (reference) => {
    // Localiza o botão no diálogo de confirmação que contém o texto fornecido
    cy.get('button.p-button')
        .contains('span', reference)
        .invoke('prop', 'textContent') // Obtém o texto do botão
        .should('equal', reference); // Verifica se o texto do botão é igual ao texto fornecido
    
    // Clica no botão de confirmação do diálogo
    cy.get('button.p-confirm-dialog-accept').click();
}); 

// Comando personalizado para esperar o aparecimento de um diálogo de confirmação
Cypress.Commands.add('waitDialogConfirmation', () => {
    // Espera até que a mensagem de confirmação seja visível, com um timeout de 4 segundos
    cy.contains('.p-confirm-dialog-message', 'Tem certeza que deseja excluir?', {timeout:4000})
}); 

Cypress.Commands.add('waitMessageStatus', (status) => {
    cy.get('.p-toast-message-content').contains(status,{timeout:4000})
}); 


