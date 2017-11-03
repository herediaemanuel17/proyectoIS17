Rails.application.routes.draw do

  get "registrarse_index" , to "registrarse#views"
  resources :educanding
  resources :registrarse
  root "educanding#index"
  ##get "ver", to: "educanding#ver"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
