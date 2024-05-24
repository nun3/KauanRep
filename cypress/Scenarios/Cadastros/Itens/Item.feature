# language: pt

Funcionalidade: Item

Contexto:
Dado que cliquei no menu principal 'Cadastros'
E que cliquei no menu 'Itens'
E que cliquei no sub-menu 'Item'

@BomCaminho @CRUD
Cenário: Cadastrando um novo Item
    Dado que clico no botão Novo no cabeçalho de filtro
    Quando preencho o campo 'Descrição' com o valor 'Banana' na tela de Item
    E seleciono o campo 'Tipo do Item' com o valor 'Produto Acabado' na tela de Item
    E seleciono o campo 'Unidade de Medida' com o valor 'Bombona' na tela de Item
    E seleciono o campo 'Origem da Mercadoria' com o valor '4' na tela de Item
    E seleciono o campo 'Inativo Para' com o valor 'Todos' na tela de Item
    E seleciono o campo 'Gênero do Item' com o valor 'Plantas vivas e produtos de floricultura' na tela de Item
    E seleciono o campo 'Configuração da Contabilização' com o valor '3' na tela de Item
    E seleciono o campo 'Marca' com o valor '5' na tela de Item
    E seleciono o campo 'Tipo Lote' com o valor 'Geral' na tela de Item
    E seleciono o campo 'Código do item para IPM' com o valor 'PRDISTRIBEE01' na tela de Item
    E preencho o campo 'Peso Líquido' com o valor '200,00' na tela de Item
    E preencho o campo 'Peso Bruto' com o valor '285,45' na tela de Item
    E preencho o campo 'Informação Adicional' com o valor 'Teste' na tela de Item
    E seleciono o campo 'NCM' com o valor '84833021' na tela de Item
    E seleciono o campo 'CEST' com o valor '2806300' na tela de Item
    E seleciono o campo 'Tributação ICMS' com o valor '2' na tela de Item
    E preencho o campo 'Estoque Mínimo' com o valor '555' na tela de Item
    E seleciono o campo 'Tributação PIS/COFINS' com o valor '200' na tela de Item
    E seleciono o campo 'GRUPO' com o valor 'FERTILIZANTES' na tela de Item
    E seleciono o campo 'SUB-GRUPO' com o valor 'ADJUVANTES' na tela de Item
    E seleciono o campo 'Local de Estoque Padrão – Entradas' com o valor '2' na tela de Item
    E que clico no botão Salvar no cabeçalho do formulário
    Então visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'
    E armazeno o valor do ID na tela de Item

@BomCaminho @CRUD
Cenário: Editando um Item
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Banana Editado' na tela de Item
    E seleciono o campo 'Tipo do Item' com o valor 'Matéria-Prima' na tela de Item
    E seleciono o campo 'Unidade de Medida' com o valor 'Bloco' na tela de Item
    E preencho o campo 'Estoque Mínimo' com o valor '33' na tela de Item
    E que clico no botão Salvar no cabeçalho do formulário
    E visualizo a seguinte mensagem de sucesso 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo um Item
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com valor '[CONTEXTO=IDGLOBAL]' na tela de Filtros
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o valor '[CONTEXTO=IDGLOBAL]' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E visualizo a seguinte mensagem de sucesso 'Registro removido com sucesso'