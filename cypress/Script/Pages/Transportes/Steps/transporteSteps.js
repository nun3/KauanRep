import { Given } from 'cypress-cucumber-preprocessor/steps';
import veiculos from '../Actions/veiculosActions';

Given('que acessei o formulário de Veículos', () => {
    veiculos.CheckItemForm();
});
