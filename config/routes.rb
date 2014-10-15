Betastore::Application.routes.draw do
  resources :subscriptions
  root :to => 'subscriptions#new'
  get '/products' => 'products#index'
  namespace :admin do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show', as: 'product'
  end
end
