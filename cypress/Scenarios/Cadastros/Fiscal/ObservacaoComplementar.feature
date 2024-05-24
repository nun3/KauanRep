# language: pt

Funcionalidade: Observação Complementar

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Fiscal'
    E que cliquei no sub-menu 'Observação Complementar'

@BomCaminho @CRUD
Cenário: Cadastrando uma nova Observação Complementar
    Dado que clico no botão Novo no cabeçalho de filtro
    Quando seleciono o campo 'Tipo do Documento' com o valor 'NF-e'
    E preencho o campo 'Descrição' com o valor 'Descrição de Teste'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Editando uma Observação Complementar
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando seleciono o campo 'Tipo do Documento' com o valor 'CT-e'
    E preencho o campo 'Descrição' com o valor 'Descrição de Teste Editado'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo uma Observação Complementar
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão  
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E visualizo a seguinte mensagem de sucesso 'Registro removido com sucesso'