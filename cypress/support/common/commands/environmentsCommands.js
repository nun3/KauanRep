Cypress.Commands.add('saveId', (id) => {
    // Armazena o ID em uma variável global chamada 'idGlobal'
    Cypress.env('idGlobal', id);
    cy.log(`Salvo o idGlobal: ${id}`);
});

Cypress.Commands.add('saveCodigoOperacaoFiscal', (codigo) => {
    Cypress.env('CODIGO_OPERACAO_FISCAL', codigo);
    cy.log(`Salvando Código de Operação Fiscal: ${codigo}`);
});
