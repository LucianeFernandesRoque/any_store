Rails.application.routes.draw do
  post '/produtos' => 'produtos#create'
  get '/produtos/new' => 'produtos#new'
  root 'produtos#index'
end
