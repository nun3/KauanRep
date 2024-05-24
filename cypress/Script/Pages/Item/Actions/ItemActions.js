import elementMaps from '../ElementsMaps/ItemElementsMaps.json';

class ItemActions {
    fillField(param, valor) {
        cy.get(elementMaps.ItemPageLocators.cardContent)
            .find(elementMaps.ItemPageLocators.label)
            .contains(param)
            .siblings(elementMaps.ItemPageLocators.input)
            .scrollIntoView() // Rolar para o elemento
            .should('be.visible')
            .clear() // Limpar o campo antes de digitar
            .type(valor)
            .invoke('val') // Pegar o valor atual do campo
            .should('eq', valor); // Comparar o valor com o texto passado por parâmetro
    }

    selecionarOpcao(param, valor) {
        // Chama a função "selectOption" que esta definido em interactionsCommands.js
        cy.selectOption(param, valor);
    }
    
    checkSucessMessage(message) {
        cy.get('.p-toast-message-content')
            .should('be.visible') // Verifica se a mensagem está visível
            .invoke('text') // Obtém o texto da mensagem
            .should('eq', message); // Verifica se o texto da mensagem é igual à mensagem fornecida
    }
    
    saveId() {
        cy.wait(500);
        // Encontra o elemento que contém o ID e salva seu texto como uma string numérica
        cy.get(elementMaps.ItemPageLocators.headerForm)
            .find(elementMaps.ItemPageLocators.codigoFormat)
            .then(($text) => {
                let txt = $text.text(); // Obtém o texto do ID
                txt = Number(txt).toString(); // Converte o texto para número e depois para string
                // Chama a função "saveId" para salvar o ID
                cy.saveId(txt);
                // Loga o ID
                cy.log(txt);
            });
    }
}
export default new ItemActions;