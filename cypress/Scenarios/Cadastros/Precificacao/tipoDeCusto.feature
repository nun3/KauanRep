# language: pt

Funcionalidade: Tipo de Custo

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Precificação'
    E que cliquei no sub-menu 'Tipo de Custo'

@BomCaminho @CRUD
Cenário: Cadastrando um novo Tipo de Custo
    Dado que acessei o formulário de Tipo de Custo
    E que clico no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Custo Direto' na tela de Tipo de Custo
    E seleciono o campo 'Tipo' com o valor 'Direto' na tela de Tipo de Custo
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de Tipo de Custo

@BomCaminho @CRUD
Cenário: Editando um Tipo de Custo
    Dado que acessei o formulário de Tipo de Custo
    E que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Custo Indireto Editado' na tela de Tipo de Custo
    E seleciono o campo 'Tipo' com o valor 'Indireto' na tela de Tipo de Custo
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo um Tipo de Custo
    Dado que acessei o formulário de Tipo de Custo
    E que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'