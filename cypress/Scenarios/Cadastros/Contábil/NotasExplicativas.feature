# language: pt

Funcionalidade: Notas Explicativas

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Contábil'
    E que cliquei no sub-menu 'Notas Explicativas'

@BomCaminho @CRUD
Cenário: Cadastrando uma nova Nota Explicativa
    Dado que clico no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Data' com o valor '04/2024'
    E seleciono o campo 'Tipo' com o valor 'Outros'
    E preencho o campo 'Descrição' com o valor 'Descrição de Teste'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'
    Então armazeno o valor do ID na tela de formulário

@BomCaminho @CRUD
Cenário: Editando uma Nota Explicativa
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Data' com o valor '05/2024'
    E seleciono o campo 'Tipo' com o valor 'Balanço Patrimonial'
    E preencho o campo 'Descrição' com o valor 'Descrição de Teste Editado'
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo uma Nota Explicativa
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão  
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E visualizo a seguinte mensagem de sucesso 'Registro removido com sucesso'