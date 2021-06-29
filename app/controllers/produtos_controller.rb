class ProdutosController < ApplicationController

  def index
    @produtos_preco = Produto.order :preco
    @produtos_nome = Produto.order(:nome).limit 5
  end
end
