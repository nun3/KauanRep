Cypress.Commands.add('SetMenuFixed', () => {
    cy.wait(2000);
    cy.get('.button-img.ng-tns-c103-1').click();
});

// Comando personalizado para selecionar um item no menu principa
Cypress.Commands.add('SetMenuPrincipal', (menuPrincipal) => {
    // Aguardar 3 segundos para garantir que o menu esteja carregado
    cy.wait(3000);
    
    // Localizar e clicar no item do menu principal especificado
    cy.contains('.menus-sidenav a', menuPrincipal)
        .should('exist') // Verificar se o item do menu existe
        .click(); // Clicar no item do menu
});

// Comando personalizado para selecionar um item no menu
Cypress.Commands.add('SetMenu', (menu) => {
    // Aguardar 3 segundos para garantir que o menu esteja carregado
    cy.wait(3000);
    
    // Localizar e clicar no item de menu especificado
    cy.contains('.item', menu)
        .should('exist') // Verificar se o item do menu existe
        .click(); // Clicar no item do menu
});

// Comando personalizado para selecionar um sub-menu
Cypress.Commands.add('SetSubMenu', (subMenu) => {
    // Localizar e clicar no sub-menu especificado
    cy.contains('.ng-star-inserted a', subMenu)
        .should('exist') // Verificar se o sub-menu existe
        .click(); // Clicar no sub-menu
    
    // Aguardar 5 segundos para a página carregar
    cy.wait(7000);
    
    // Verificar se a URL mudou, indicando que a página foi carregada
    cy.url().should('not.eq', Cypress.config().baseUrl);
});


