Rails.application.routes.draw do
  post '/produtos' => 'produtos#create'
  get '/produtos/new' => 'produtos#new'
  delete '/produtos/:id' => "produtos#destroy", as: :produto
  root 'produtos#index'

end
