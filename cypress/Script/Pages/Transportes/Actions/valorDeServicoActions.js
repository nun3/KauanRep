class valorDeServicoActions {
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
        cy.url().should('contain', Cypress.config().baseUrl+'transporte/componentes-do-valor-de-servico');
    }

    marcarCheckbox(checkbox) {
        cy.get('.p-card-content')
            .contains(checkbox)
            .scrollIntoView()
            .parents('.form-group')
            .find('.p-checkbox-box')
            .should('be.visible')
            .then(($checkbox) => {
                // Verifica se o checkbox não está marcado
                if ($checkbox.attr('aria-checked') === 'false') {
                    cy.wrap($checkbox).click();
                }
            });
    }
}

export default new valorDeServicoActions();