import componentMapping from '../components/elementMapping/componentMapping'
import { genericInterpreter } from '../processor/interpreter/insertInterpreter'

Cypress.Commands.add('fillField', (fieldName, value) => {
    const mappedComponents = componentMapping.getAllMappedComponents(); 
    value = genericInterpreter(value);
    cy.get('.p-card-content') 
    .find(`:contains("${fieldName}")`)
    .siblings(mappedComponents)
    .should('be.visible')
    .then($field => {
        const componentType = $field.get(0).tagName.toLowerCase();
        const component = componentMapping.componentTypeMap[componentType];
        component.clear($field);
        component.fill($field, value);
    });
}); 

Cypress.Commands.add('selectOption', (param, valor) => {
    // Seleciona o elemento da classe
    cy.get('.p-card-content')
        // Procura por um elemento com a classe '.form-group' dentro do '.p-card-content'
        .find('label')
        // Procura por um elemento que contenha o texto passado por parâmetro
        .contains(param)
        // Após encontrar o elemento com o texto do parâmetro, executa o seguinte bloco de código
        .then(($param) => {
            // Verifica se o elemento tem um irmão com a classe 'p-autocomplete'
            if ($param.siblings('p-autocomplete').length > 0) {
                // Se o irmão for um p-autocomplete, encontra e clica no dropdown do p-autocomplete
                cy.wrap($param)
                    .siblings('p-autocomplete')
                    .find('.p-autocomplete-dropdown')
                    .focus() // Foca no elemento dropdown
                    .click(); // Clica no dropdown

                // Depois que o dropdown é aberto, procura pelo item que contém o valor especificado
                cy.get('ul[role="listbox"]')
                    .find('li[role="option"]')
                    .contains(valor)
                    .should('be.visible') // Verifica se o item é visível
                    .click({ force: true }); // Clica no item (usando { force: true } para forçar o clique)

            } else if ($param.siblings('p-dropdown').length > 0) {
                // Se o irmão for um p-dropdown, encontra e clica no botão de dropdown
                cy.wrap($param)
                    .siblings('p-dropdown')
                    .find('div[role="button"]')
                    .click();

                // Depois que o dropdown é aberto, procura pelo item que contém o valor especificado
                cy.get('ul[role="listbox"]')
                    .find('p-dropdownitem')
                    .contains(valor)
                    .click({ force: true }); // Clica no item (usando { force: true } para forçar o clique)

                // Verifica se o item clicado é visível
                cy.get('p-dropdownitem')
                    .contains(valor)
                    .should('be.visible')
                    .click({ force: true }); // Clica no item (usando { force: true } para forçar o clique)

            } else {
                // Se nenhum dos elementos irmãos corresponder aos tipos suportados, lança um erro
                throw new Error('Tipo de componente não suportado');
            }
        });
});


// Comando personalizado para preencher um campo com código salvo
Cypress.Commands.add('fillFieldWithGeneratedValue', (fieldReference, envCod) => {
    const value = Cypress.env(envCod);
    cy.log(`Tentando preencher o campo ${fieldReference} com a variável ${envCod}`);
    // Verifica se a variável está definida
    if (!value) {
        throw new Error(`Variável ${envCod} não está definida. Verifique se foi gerada e salva corretamente.`);
    }
    cy.get('.p-sidebar-content')
        .find('label')
        .contains(fieldReference)
        .siblings('input')
        .should('be.visible')
        .clear()
        .type(value);
});

// Comando personalizado para clicar na primeira linha do grid com o valor do código
Cypress.Commands.add('clickFirstRowGridWithGeneratedValue', (envCod) => {
    const value = Cypress.env(envCod);
    cy.log(`Clicando na linha do grid com o valor gerado: ${value}`);
    cy.get('td.column-row-Data div')
        .contains(value)
        .click();
});

// Comando personalizado para excluir uma linha do grid com o código salvo
Cypress.Commands.add('deleteRowFromGridWithGeneratedValue', (envCod) => {
    const value = Cypress.env(envCod);
    cy.log(`Excluindo a linha do grid com o valor gerado: ${value}`);
    cy.get('td.column-row-Data')
        .contains(value)
        .parent()
        .parent() // Vai para o elemento pai da linha
        .find('app-remover') // Encontra o botão de exclusão
        .click();
});

Cypress.Commands.add('fillFieldSelectItemDropdown', (value, fieldName, SelectOption) => {

    cy.get('.p-card-content') // Encontra o container principal
        .find('label') // Encontra todos os labels dentro do container
        .contains(fieldName) // Localiza o label específico com o texto fornecido
        .siblings('p-autocomplete') // Encontra o campo de entrada associado ao label
        .should('be.visible')
        .clear() // Limpa o conteúdo atual do campo
        .type(value); // Digita o valor atualizado no campo

    cy.get('ul[role="listbox"]')
        .find('li[role="option"]')
        .contains(SelectOption)
        .should('be.visible')
        .click();

});

