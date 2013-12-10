EmberDemo::Application.routes.draw do
  #root 'examples#index'

  root :to => "examples#show", id: "3-50"
  resources :examples, only: [:show, :index]
  # resources :products, only: [:index]
end