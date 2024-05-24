import {Given, When, Then } from 'cypress-cucumber-preprocessor/steps';
import GrupoUsuariosActions from '../Actions/grupoDeUsuariosActions';

When('preencho o campo {string} com o valor {string} na tela de Grupo de Usuários', (param, valor) => {
    GrupoUsuariosActions.fillField(param, valor);
});

Then('armazeno o valor do ID na tela de Grupo de Usuários', () => {
    GrupoUsuariosActions.saveId();
});

Given('que acessei o formulário de Grupo de Usuários', () => {
    GrupoUsuariosActions.CheckItemForm();
});