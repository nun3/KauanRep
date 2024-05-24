# language: pt

Funcionalidade: Embalagem

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Itens'
    E que cliquei no sub-menu 'Embalagem'

@BomCaminho @CRUD
Cenário: Cadastro de Embalagem
    Dado que clico no botão Novo no cabeçalho de filtro
    E preencho o campo 'Descrição' com o valor 'Embalagem Teste'
    E preencho com o valor 'CR' o campo 'Unidade da Embalagem' selecionando a opção 'CR'
    E preencho com o valor 'CR' o campo 'Unidade de Conversão' selecionando a opção 'CR'
    E preencho o campo 'Fator de Conversão' com o valor '1,0000000000'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Edição de Embalagem
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Embalagem Editado'
    E preencho com o valor 'CT' o campo 'Unidade da Embalagem' selecionando a opção 'Cento'
    E preencho com o valor 'CT' o campo 'Unidade de Conversão' selecionando a opção 'Cento'
    E preencho o campo 'Fator de Conversão' com o valor '3,0000000000'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Exclusão de Embalagem
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E visualizo a seguinte mensagem de sucesso 'Registro removido com sucesso'