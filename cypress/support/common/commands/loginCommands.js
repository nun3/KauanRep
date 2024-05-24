Cypress.Commands.add('Login', (username, password) => {
    cy.visit('/');
    cy.get('.login-form').within(() => {
        cy.get('#username').focus().type(username);
        cy.get('#password').focus().type(password);
        cy.root().submit();
    });
    cy.location('pathname', { timeout: 10000 }).should('not.eq', '/login');
    // Verifica se o perfil do usuário está presente após o login
    cy.get('.perfil-container').should('exist');
});