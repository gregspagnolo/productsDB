Rails.application.routes.draw do
  root 'products#index'
  get '/new' => 'products#new'
  post '/create' => 'products#create'
  get '/products/:id' => 'products#show'
  get '/products/:id/edit' => 'products#edit'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'
end
