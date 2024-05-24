# language: pt

Funcionalidade: Seguro de Carga

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Transportes'
    E que cliquei no sub-menu 'Seguro de Carga'

@BomCaminho @CRUD
Cenário: Cadastrando um novo Seguro de Carga
    Dado que acessei a página do formulário 'transporte/seguro-de-carga'
    E que clico no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Número Apólice' com o valor '1234567890'
    E preencho o campo 'Seguradora' com o valor 'Teste'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Editando um Seguro de Carga
    Dado que acessei a página do formulário 'transporte/seguro-de-carga'
    E que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Número Apólice' com o valor '0987654321'
    E preencho o campo 'Seguradora' com o valor 'Teste Editada'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo um Seguro de Carga
    Dado que acessei a página do formulário 'transporte/seguro-de-carga'
    E que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E visualizo a seguinte mensagem de sucesso 'Registro removido com sucesso'