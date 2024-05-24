import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';
import { LocalEstoqueAction } from '../Actions/LocalEstoqueActions';

const LocalEstoqueAct = new LocalEstoqueAction

Given(`que acessei o formulário de Local de Estoque`, ()=> {
    LocalEstoqueAct.CheckItemForm()
});

When(`preencho o valor {string} no campo {string} na tela de Local de Estoque`, (value, labelCaption)=> {
    LocalEstoqueAct.inputTypeText(value, labelCaption)
});

Then(`salvo o registro {string} no campo {string} na tela de Local de Estoque`, (value, labelCaption)=> {
    LocalEstoqueAct.autoSelectItemList(value, labelCaption)
});

Then(`armazeno o valor do ID na tela de Local de Estoque`, ()=> {
    LocalEstoqueAct.Saveid();
});