#Incluindo a classe calculaDesconto.rb
require './calculaDesconto.rb'
class Main


#Hash que armazena os id's e os valores dos filmes
    store = Hash.new
    store = {
      1 => 45,
      2 => 55,
      3 => 100,
      4 => 55,
      5 => 100,
      6 => 200
    }

#Variáveis para armazena os id's e os valores dos filmes digitados pelos usuários

    id_filmes    = Array.new
    total_compra = 0

    puts "                                  Sistema de Descontos
=======================================================================================
=    -------------------Para Selecionar o filme digite o número do mesmo.------------ =
=    -----------------Para finalizar a compra digíte F a qualquer momento.----------- =
=    -----------------------------Lista de Filmes------------------------------------ =
=    Número Filme --   Nome Filme           --      Gênero    --       Valor do Filme =
=        1        --  Senhor dos Anéis      --    Fantasia    --          45,00       =
=        2        --  As Branquelas         --    Comédia     --          55,00       =
=        3        --  Velozes e Furiosos 7  --    Ação        --         100,00       =
=        4        --  Velozes e Furiosos 6  --    Ação        --          55,00       =
=        5        --  The Scapegoat         --    Drama       --         100,00       =
=        6        --  Meu Malvado Favorito  --    Animação    --         200,00       =
=======================================================================================
    "
#recebendo o valor digitado e armazenando em uma varavel temporária

    temp = gets.chomp
    while temp != "F"
          if store.has_key? temp.to_i
#Atribuindo os ID's digitados a um array, que posteriormente serão utilizados no cáclculo
              id_filmes << temp
#Somando os valores dos filmes no carrinho
              total_compra += store[temp.to_i]
              temp = gets.chomp
          else
              puts "Filme não cadastrado, favor digitar um novo código"
              temp = gets.chomp
          end
      end
#Operador ternário para verificar se o carrinho está vazio
      puts total_compra != 0 ? "Total da Compra: #{total_compra},00" : "Seu Carrinho Está Vazio"

#instanciando a classe de calculos
      carrinho = CalculaDesconto.new(total_compra, id_filmes)
#armazenando o percentual de desconto
      desconto = carrinho.controler
#Exibe a mensagem somente quando algum tiver algum desconto a ser Aplicado
 puts "Percentual de Descontos a ser Aplicado: #{desconto} %" if desconto > 0

#Calculando o Valor Final da compra
      total_final = (total_compra * (100 - desconto.to_f) / 100).to_i

#Exibe a mensagem somente quando algum tiver algum desconto a ser Aplicado
puts "Valor do Campra Com Descontos: #{total_final},00" if desconto > 0

#Exibe a mensagem somente quando algum tiver algum desconto a ser Aplicado
puts "Você Economizou #{total_compra - total_final},00 Nessa Compra." if desconto > 0

#fim da Main
end
