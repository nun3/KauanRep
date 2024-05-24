# language: pt

Funcionalidade: Grupo de Usuários

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Usuários'
    E que cliquei no sub-menu 'Grupo de Usuários'

@BomCaminho @CRUD
Cenário: Cadastrando um novo Grupo de Usuários
    Dado que acessei o formulário de Grupo de Usuários
    E que clico no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Grupo de Usuários Teste' na tela de Grupo de Usuários
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E armazeno o valor do ID na tela de Grupo de Usuários

@BomCaminho @CRUD
Cenário: Editando um Grupo de Usuários
    Dado que acessei o formulário de Grupo de Usuários
    E que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Grupo de Usuários Editado' na tela de Grupo de Usuários
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo um Grupo de Usuários
    Dado que acessei o formulário de Grupo de Usuários
    E que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'
