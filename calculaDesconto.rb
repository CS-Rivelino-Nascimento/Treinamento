class CalculaDesconto

    def initialize(value, id_filme)
      @value    = value
      @id_filme = id_filme
    end

#Método para verificar se no carrinho possui filmes do gênero ação
    def controler
        if @id_filme.include?("3") || @id_filme.include?("4")
          calcula_desconto(@value) + 5
        else
          calcula_desconto(@value)
        end
    end

#Método genérico para calcular descontos na compra
    def calcula_desconto(total)
        if total <= 100
          0
        elsif total > 100 &&  total <= 200
          10
        elsif total > 200 &&  total <= 300
          20
        elsif total > 300 &&  total <= 400
          25
        else
          30
        end
    end

end
