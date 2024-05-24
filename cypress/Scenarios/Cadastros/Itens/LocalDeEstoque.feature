# language: pt

Funcionalidade: Local de Estoque

Contexto: Acessar Módulo
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu "Itens"
    E que cliquei no sub-menu "Local de Estoque"

@BomCaminho @CRUD
Cenário: Cadastro de Local de Estoque
    Dado que acessei o formulário de Local de Estoque
    E que clico no botão Novo no cabeçalho de filtro
    Quando preencho o valor 'Local de Estoque Teste' no campo 'Descrição' na tela de Local de Estoque
    E preencho o valor '85501130' no campo 'CEP' na tela de Local de Estoque
    E preencho o valor '855' no campo 'Número' na tela de Local de Estoque
    E preencho o valor 'Casa' no campo 'Complemento' na tela de Local de Estoque
    E que clico no botão Salvar no cabeçalho do formulário
    E aguardo o status 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de Local de Estoque
    E salvo o registro 'Pato Branco' no campo 'Cidade' na tela de Local de Estoque
    E salvo o registro 'Rua Genuíno Piacentini' no campo 'Endereço' na tela de Local de Estoque

@BomCaminho @CRUD
Cenário: Edição de Local de Estoque
    Dado que acessei o formulário de Local de Estoque
    E que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o valor 'Local de Estoque Editado' no campo 'Descrição' na tela de Local de Estoque
    E preencho o valor '85501150' no campo 'CEP' na tela de Local de Estoque
    E preencho o valor '850' no campo 'Número' na tela de Local de Estoque
    E preencho o valor 'Apartamento' no campo 'Complemento' na tela de Local de Estoque
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'
    E salvo o registro 'Pato Branco' no campo 'Cidade' na tela de Local de Estoque
    E salvo o registro 'Rua Lauro Bertol' no campo 'Endereço' na tela de Local de Estoque

@BomCaminho @CRUD
Cenário: Exclusão de Local de Estoque
    Dado que acessei o formulário de Local de Estoque
    E que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'