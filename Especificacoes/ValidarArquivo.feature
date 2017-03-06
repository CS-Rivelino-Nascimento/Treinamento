#Language: pt
Funcionalidade: Validar o carregamento da planilha
  Como CIO de uma organização
  Quero atualizar os status de projetos
  Para identificar os riscos relacionados ao projeto

  Cenário: Carregar planilha com sucesso
    Dado que esteja na tela de envio da planilha
    E tenha uma planilha com os dados preenchidos
    Quando eu enviar a planilha
    Então vejo a seguinte mensagem: "Dados carregados com sucesso!"

  Cenário: Planilha com extensão diferente de .xls, .xlsx
    Dado que esteja na tela de envio da planilha
    E tenha um arquivo com um formato diferente de .xls, .xlsx
    Quando eu enviar a planilha
    Então vejo a seguinte mensagem: "Extensão da planilha importada não pode ser diferente de .xls, .xlsx!"

  Cenário: Planilha sem Dados, Vazia
    Dado que esteja na tela de envio da planilha
    E tenha uma planilha sem os dados preenchidos
    Quando eu enviar a planilha
    Então vejo a seguinte mensagem: "A planilha não pode estar vazia, por favor preencha os campos obrigatórios da planilha!"

  Cenário: Planilha com Layout diferente do esperado
    Dado que esteja na tela de envio da planilha
    E tenha uma planilha com um preenchimento diferente do esperado
    Quando eu enviar a planilha
    Então vejo a seguinte mensagem: "formato da planilha está diferente do esperado, por favor verifique o preenchimento da planilha!"
