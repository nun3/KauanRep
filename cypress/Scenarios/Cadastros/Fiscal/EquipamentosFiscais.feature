# language: pt

Funcionalidade: Equipamentos Fiscais

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Fiscal'
    E que cliquei no sub-menu 'Equipamentos Fiscais'

@BomCaminho @CRUD
Cenário: Cadastrando um novo Equipamento Fiscal
    Dado que clico no botão Novo no cabeçalho de filtro
    Quando seleciono o campo 'Modelo Documento' com o valor 'Nota Fiscal'
    E preencho o campo 'Modelo do Equipamento Fiscal' com o valor 'Modelo de Teste'
    E preencho o campo 'Número de Série de Fabricação' com o valor '123'
    E preencho o campo 'Número do Caixa do Equipamento' com o valor '123'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Editando um Equipamento Fiscal
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando seleciono o campo 'Modelo Documento' com o valor 'Nota Fiscal Avulsa'
    E preencho o campo 'Modelo do Equipamento Fiscal' com o valor 'Grupo Teste Editado'
    E preencho o campo 'Número de Série de Fabricação' com o valor '321'
    E preencho o campo 'Número do Caixa do Equipamento' com o valor '321'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo um Equipamento Fiscal
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão  
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E visualizo a seguinte mensagem de sucesso 'Registro removido com sucesso'