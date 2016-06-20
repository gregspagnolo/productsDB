Rails.application.routes.draw do
  root 'products#index'
  get 'products/new' => 'products#new'
  post '/create' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  get '/comments' => 'comments#index'
  post '/comment/create' => 'comments#create'
end
