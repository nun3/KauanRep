class GrupoUsuariosActions {
    fillField(param, valor) {
        cy.get('.p-card-content')
            .find('label')
            .contains(param)
            .siblings('input, p-dropdown')
            .scrollIntoView()
            .should('be.visible')
            .clear()
            .type(valor);
    }

    saveId() {
        cy.wait(500);
        cy.get('header-form')
            .find('.codigo-format')
            .then(($text) => {
                let txt = $text.text();
                txt = Number(txt).toString();
                cy.saveId(txt);
                cy.log(txt);
            });
    }

    CheckItemForm(){
        cy.url().should('contain', Cypress.config().baseUrl+'master/grupo-usuario');
    }
}

export default new GrupoUsuariosActions();
