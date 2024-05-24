# language: pt

Funcionalidade: Operação Fiscal

Contexto:
    Dado que cliquei no menu Mostrar e Ocultar
    E que cliquei no menu principal 'Cadastros'
    E que cliquei no menu 'Operações'
    E que cliquei no sub-menu 'Operação Fiscal'

@BomCaminho @CRUD
Cenário: Cadastrando uma nova Operação Fiscal
    Dado que clico no botão Novo no cabeçalho de filtro
    Quando gero um código aleatório na tela de Operação Fiscal
    E preencho o campo 'Descrição' com o valor 'Nova Operação Fiscal' na tela de Operação Fiscal
    E seleciono o campo 'CFOP' com o valor '1101' na tela de Operação Fiscal
    E marco os checkboxes:
        | Normal                        |
        | Petróleo/Energia?             |
        | Movimenta Item no Imobilizado?|
        | Calcula o Registro 1400 da EFD ICMS/IPI?|
        | Movimenta Receita de Exportação?|
        | Movimenta Financeiro?         |
        | Soma no Faturamento?          |
        | Fixação                       |
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Editando uma Operação Fiscal
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com o valor gerado 'CODIGO_OPERACAO_FISCAL' na tela
    E clico no botão Filtrar na tela de Filtros
    E clico na linha com o código gerado 'CODIGO_OPERACAO_FISCAL' no grid do Browser
    Quando preencho o campo 'Descrição' com o valor 'Operação Fiscal Editada' na tela de Operação Fiscal
    E seleciono o campo 'CFOP' com o valor '1102' na tela de Operação Fiscal
    E que clico no botão Salvar no cabeçalho do formulário
    Então aguardo o status 'Salvo com sucesso'

@BomCaminho @CRUD
Cenário: Excluindo uma Operação Fiscal
    Dado que clico no botão Filtrar no cabeçalho de filtro
    E preencho o campo 'Código' com o valor gerado 'CODIGO_OPERACAO_FISCAL' na tela
    E clico no botão Filtrar na tela de Filtros
    Quando excluo a linha com o código gerado 'CODIGO_OPERACAO_FISCAL' no grid do Browser
    Então aguardo o Dialogo de Confirmação de Exclusão
    E clico em 'Sim' no Dialogo de Confirmação de Exclusão
    E aguardo o status 'Registro removido com sucesso'
