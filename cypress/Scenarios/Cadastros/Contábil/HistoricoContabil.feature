# language: pt

Funcionalidade: Histórico Contábil

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Contábil'
    E que cliquei no sub-menu 'Histórico Contábil'

@BomCaminho @CRUD
Cenário: Cadastrando um novo Histórico Contábil
    Dado que clico no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Descrição de Teste'
    E seleciono o campo 'Tipo Complemento' com o valor 'Obrigatório'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Editando um Histórico Contábil
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Descrição de Teste Editado'
    E seleciono o campo 'Tipo Complemento' com o valor 'Opcional'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo um Histórico Contábil
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão  
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E visualizo a seguinte mensagem de sucesso 'Registro removido com sucesso'