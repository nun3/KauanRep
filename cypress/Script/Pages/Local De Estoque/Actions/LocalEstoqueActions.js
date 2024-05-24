import LocalEstoqueElement from "../ElementsMaps/LocalEstoqueElementsMaps.json";
const  container = LocalEstoqueElement.LocalEstoqueLocators

export class LocalEstoqueAction {

  inputTypeText(value, labelCaption) {
    
    cy.get(container.FormContainer).find('label')
    .contains(labelCaption)
    .siblings('p-inputmask, input').each(($element) => {
        if ($element.is('p-inputmask')) {
          cy.wrap($element).clear().type(value + '{enter}')
        } else {
          cy.wrap($element).clear().type(value).then(() => {
            expect($element.val()).to.eq(value);
          });
        }
      });
  }

  autoSelectItemList(value, labelCaption) {
    switch (labelCaption) {
      case 'Cidade':
        cy.get(container.CidadeInput).should('have.value', value);
        break;
      case 'Endereço':
        cy.get(container.EnderecoInput).should('have.value', value);
        break;
      default:
        throw new Error(`Valor "${value}" não é válido.`);
    }
  }

  Saveid(){
    cy.getCurrentFormId().then(id => cy.saveId(parseInt(id)));
  }

  CheckItemForm(){
    cy.url().should('contain', Cypress.config().baseUrl+'fiscal/local-estoque');
  }
}