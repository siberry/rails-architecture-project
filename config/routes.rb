Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :homes, only:[:index, :show]
  resources :elements, only:[:index, :show]

end
