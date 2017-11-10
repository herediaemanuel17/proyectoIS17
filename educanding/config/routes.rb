Rails.application.routes.draw do
  devise_for :users
  root 'educanding#index'
  #resources :preguntar
  get 'preguntar/nuevo'=>'preguntar#nuevo'
  post 'preguntar/crear'=>'preguntar#crear'
  get 'voteqs/positivo'=>'voteqs#positivo'
  get 'voteqs/negativo'=>'voteqs#negativo'
  get 'preguntar/lapregunta'=>'preguntar#lapregunta'
  get 'responder/nuevo'=>'responder#nuevo'
  post 'responder/crear'=>'responder#crear'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
