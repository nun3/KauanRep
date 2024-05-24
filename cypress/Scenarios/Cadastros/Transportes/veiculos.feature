# language: pt

Funcionalidade: Veículos

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Transportes'
    E que cliquei no sub-menu 'Veículos'

@BomCaminho @CRUD
Cenário: Cadastrando um novo veículo
    Dado que acessei o formulário de Veículos
    E que clico no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Renavam' com o valor '1234567890'
    E preencho o campo 'Placa' com o valor 'ABC1234'
    E preencho o campo 'Modelo' com o valor 'Modelo Teste'
    E preencho o campo 'Marca' com o valor 'Marca Teste'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Editando um veículo
    Dado que acessei o formulário de Veículos
    E que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    E preencho o campo 'Modelo' com o valor 'Modelo Teste Editado'
    E preencho o campo 'Marca' com o valor 'Marca Teste Editada'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo um veículo
    Dado que acessei o formulário de Veículos
    E que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E visualizo a seguinte mensagem de sucesso 'Registro removido com sucesso'

