class veiculosActions {


    CheckItemForm(){
        cy.url().should('contain', Cypress.config().baseUrl+'transporte/veiculo');
    }
}

export default new veiculosActions();