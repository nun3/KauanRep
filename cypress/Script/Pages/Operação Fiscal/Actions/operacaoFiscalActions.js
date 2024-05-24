class OperacaoFiscalActions {
    gerarCodigoAleatorio() {
        const codigoAleatorio = Math.floor(10000 + Math.random() * 90000).toString();
        cy.log(`Gerando Código Aleatório: ${codigoAleatorio}`);
        cy.get('.p-card-content')
            .find('label')
            .contains('Código')
            .siblings('input')
            .should('be.visible')
            .clear()
            .type(codigoAleatorio)
            .invoke('val')
            .then((codigo) => {
                cy.log(`Salvando Código Gerado: ${codigo}`);
                // Salvando a variável
                cy.wrap(codigo).as('codigoOperacaoFiscal');
                Cypress.env('CODIGO_OPERACAO_FISCAL', codigo);
            });
    }

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

    selecionarOpcao(param, valor) {
        cy.selectOption(param, valor);
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
export default new OperacaoFiscalActions();