Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buildings, only:[:index, :show]
  resources :elements, only:[:index, :show]
  resources :locations, only:[:index, :show]

  resources :users, only:[:show]
  resources :login, only: [:new, :create]

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'login#new'
  post '/login' => 'login#create'
  post '/logout' => 'login#destroy'

  root 'application#frontpage'

end
