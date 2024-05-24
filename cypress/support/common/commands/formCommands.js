// Comando personalizado para clicar no botão "Salvar" em um formulário
Cypress.Commands.add('clickSaveButtonInForm', () => {
    // Esperar 200ms antes de interagir com o elemento
    cy.wait(200);
    
    // Encontrar o botão "Salvar" dentro do cabeçalho do formulário e clicar nele
    cy.get('header-form')
        .find('.btn-salvar')
        .should('be.visible') // Verificar se o botão "Salvar" está visível
        .click(); // Clicar no botão "Salvar"
});

// Comando personalizado para clicar no botão "Novo" em um formulário
Cypress.Commands.add('clickNewButtonInForm', () => {
    // Esperar 200ms antes de interagir com o elemento
    cy.wait(200);
    
    // Encontrar o botão "Novo" dentro do cabeçalho do formulário e clicar nele
    cy.get('header-form')
        .find('.btn-novo-default')
        .should('be.visible') // Verificar se o botão "Novo" está visível
        .click(); // Clicar no botão "Novo"
});

// Comando personalizado para obter o ID do formulário atual
Cypress.Commands.add('getCurrentFormId', () => {
    // Esperar 200ms antes de interagir com o elemento
    cy.wait(200);
    
    // Encontrar o elemento que contém o ID do formulário e obter seu texto
    cy.get('header-form')
        .find('.codigo-format')
        .then(($id) => {
            return $id.text(); // Retornar o texto do ID do formulário
        });
});

Cypress.Commands.add('getAndSaveToIntCurrentFormId', () => {
    cy.getCurrentFormId().then(id => cy.saveId(parseInt(id)));
});
