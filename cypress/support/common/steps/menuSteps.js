import { Given, Then } from 'cypress-cucumber-preprocessor/steps';

Given(`que cliquei no menu Mostrar e Ocultar`, cy.SetMenuFixed);

Given(`que cliquei no menu principal {string}`, cy.SetMenuPrincipal);

Given(`que cliquei no menu {string}`, cy.SetMenu);

Then(`clico no menu principal {string}`, cy.SetMenuPrincipal);

Given(`que cliquei no sub-menu {string}`, cy.SetSubMenu);