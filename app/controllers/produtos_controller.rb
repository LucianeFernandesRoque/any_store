class ProdutosController < ApplicationController
  def index
    @produtos_preco = Produto.order :preco
    @produtos_nome = Produto.order(:nome).limit 5
  end

  def create
    valores = params.require(:produto).permit :nome, :preco, :descricao, :quantidade
    produto = Produto.create  valores
    redirect_to root_url

  end

  def destroy
    id = params[:id]
    Produto.destroy id
    redirect_to root_url

  end
end
