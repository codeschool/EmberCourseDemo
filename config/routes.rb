EmberDemo::Application.routes.draw do
  root 'examples#index'
  resources :examples, only: [:show, :index]
end