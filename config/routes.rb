Rails.application.routes.draw do
  #get 'product/index'
  #get 'product/new'
  #get 'product/create'
  #get 'product/show'
  #get 'product/edit'
  #get 'product/update'
  #get 'product/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'product#index'
  resources :product
  resources :products

  resources :products, only: [:new, :create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
