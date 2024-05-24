# language: pt

Funcionalidade: Cultivar

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Itens'
    E que cliquei no sub-menu 'Cultivar'

@BomCaminho @CRUD
Cenário: Cadastro de Cultivar
    Dado que clico no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Cultivar Teste'
    E preencho com o valor 'abacate' o campo 'Cultura' selecionando a opção 'ABACATE'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Edição de Cultivar
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Descrição' com valor 'Cultivar Teste' na tela de Filtros
    E preencho com o valor 'abacate' o campo 'Cultura' selecionando a opção 'ABACATE' na tela de filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor 'Cultivar Teste' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Cultivar Editado'
    E preencho com o valor 'abacaxi' o campo 'Cultura' selecionando a opção 'ABACAXI'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Exclusão de Cultivar
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Descrição' com valor 'Cultivar Editado' na tela de Filtros
    E preencho com o valor 'abacaxi' o campo 'Cultura' selecionando a opção 'ABACAXI' na tela de filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor 'ABACAXI' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E visualizo a seguinte mensagem de sucesso 'Registro removido com sucesso'