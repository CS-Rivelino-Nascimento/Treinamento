require './calculaDesconto.rb'

RSpec.describe CalculaDesconto do
  context "Testes para carrinhos com filmes sem o gênero AÇÃO" do
    it "Validando compra sem desconto" do
      carrinho = CalculaDesconto.new(99, [2,6,5])
      compra = carrinho.controler
      expect(compra).to be 0
    end
    it "Validando compra com 10% de desconto" do
      carrinho = CalculaDesconto.new(101, [2,6,5])
      compra = carrinho.controler
      expect(compra).to be 10
    end
    it "Validando compra com 20% de desconto" do
      carrinho = CalculaDesconto.new(201, [2,6,5])
      compra = carrinho.controler
      expect(compra).to be 20
    end
    it "Validando compra com 25% de desconto" do
      carrinho = CalculaDesconto.new(301, [2,6,5])
      compra = carrinho.controler
      expect(compra).to be 25
    end
    it "Validando compra com 30% de desconto" do
      carrinho = CalculaDesconto.new(401, [2,6,5])
      compra = carrinho.controler
      expect(compra).to be 30
    end
  end

  context "Testes para carrinhos com filmes com gênero AÇÃO" do
    it "Validando compra com desconto, somente 5% devido ao gênero" do
      carrinho = CalculaDesconto.new(99, [2,3,5])
      compra = carrinho.controler
      expect(compra).to be 5
    end
    it "Validando compra com 10% de desconto, mais 5% devido ao gênero" do
      carrinho = CalculaDesconto.new(101, [2,3,5])
      compra = carrinho.controler
      expect(compra).to be 15
    end
    it "Validando compra com 20% de desconto, mais 5% devido ao gênero" do
      carrinho = CalculaDesconto.new(201, [2,3,5])
      compra = carrinho.controler
      expect(compra).to be 25
    end
    it "Validando compra com 25% de desconto, mais 5% devido ao gênero" do
      carrinho = CalculaDesconto.new(301, [2,3,5])
      compra = carrinho.controler
      expect(compra).to be 30
    end
    it "Validando compra com 30% de desconto, mais 5% devido ao gênero" do
      carrinho = CalculaDesconto.new(401, [2,3,5])
      compra = carrinho.controler
      expect(compra).to be 35
    end
  end
end
