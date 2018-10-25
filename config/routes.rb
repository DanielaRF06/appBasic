Rails.application.routes.draw do
  resources :ordens
  resources :productos
  resources :clientes
  get 'home/index'
  get '/saludo', to:'home#saludo'
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
