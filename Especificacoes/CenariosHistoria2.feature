#Language: pt
Funcionalidade: Validar a aplicação dos filtros
  Como CIO de uma organização
  Quero pesquisar atravéz de filtros e tags
  Para identificar projetos afins ou que exijam atenção especial

  Cenário: Pesquisar por tag, sem projeto associado a ela
    Dado que esteja na tela de pesquisa
    E tenha uma tag sem projetos associados a ela
    Quando eu selecionar essa tag
    Então vejo a seguinte mensagem: "Não foram encontrados projetos com os filtros aplicados!"

  Cenário: Marcar mais de uma tag
    Dado que eu esteja na tela de pesquisa
    E tenha duas tags vinculadas a dois projetos distintos
    Quando eu selecionar as duas tag
    Então os dois projetos vinculados ás tags são exibidos

  Cenário: Limpar seleção de tag
    Dado que eu esteja na tela de pesquisa
    E tenha tag selecionada
    Quando eu clicar em limpar selecão
    Então as tags selecionadas são desmarcadas

  Cenário: Limpar seleção de tag, com filtros aplicados
    Dado que eu esteja na tela de pesquisa
    E tenha tag selecionada, e filtros aplicados
    Quando eu clicar em limpar selecão
    Então as tags selecionadas são desmarcadas, e os filtros são mantidos

  Cenário: Combinar tag com filtro
    Dado que eu esteja na tela de pesquisa
    E projetos vinculados a tag
    Quando eu selecionar alguma tag
    E selecionar algum filtro
    Então os projetos vinculados a tag e ao filtro são exibidos

  Cenário: Pesquisar por filtro, sem projeto associado a ele
    Dado que esteja na tela de pesquisa
    E tenha um filtro sem projetos associados a ele
    Quando eu selecionar esse filtro
    Então vejo a seguinte mensagem: "Não foram encontrados projetos com os filtros aplicados!"

  Cenário: Pesquisar por filtro
    Dado que esteja na tela de pesquisa
    E tenha um filtro com projetos associados a ele
    Quando eu selecionar esse filtro
    Então os projetos vinculados ao filtro são exibidos

  Cenário: Limpar seleção de filtros, com tag's aplicadas
    Dado que eu esteja na tela de pesquisa
    E tenha tag selecionada, e filtros aplicados
    Quando eu clicar em limpar selecão de filtros
    Então os filtros selecionadas são desmarcados, e as tag's são mantidas

  Cenário: Tag's não cadastradas
    Dado que esteja na tela de pesquisa
    E não existam tag's cadastradas
    Quando eu acessar o filtro de tag's
    Então os filtros de tag's não são exibidos

  Cenário: Validar filtro de preenchimento
    Dado que esteja na tela de pesquisa
    E preencha um campo de preenchimento
    Quando eu preencher o campo
    Então os projetos relacionados ao filtro são exibidos
