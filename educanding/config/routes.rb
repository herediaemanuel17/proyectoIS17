Rails.application.routes.draw do
  devise_for :users

  root 'educanding#index'
  resources :univercities
  resources :labels
  get 'educanding/miperfil'=>'educanding#miperfil'
  get 'preguntar/mejorrespuesta'=>'preguntar#mejorrespuesta'
  get 'preguntar/nuevo'=>'preguntar#nuevo'
  post 'preguntar/crear'=>'preguntar#crear'
  get 'voteqs/positivo'=>'voteqs#positivo'
  get 'voteqs/negativo'=>'voteqs#negativo'
  get 'preguntar/lapregunta'=>'preguntar#lapregunta'
  get 'responder/nuevo'=>'responder#nuevo'
  post 'responder/crear'=>'responder#crear'
  get 'voteas/positivo'=>'voteas#positivo'
  get 'voteas/negativo'=>'voteas#negativo'
  get 'responder/repues'=>'responder#repues'
  get 'comentariop/nuevo'=>'comentariop#nuevo'
  get 'comentariop/index'=>'comentariop#index'
  post 'comentariop/crear'=>'comentariop#crear'
  get 'comentarior/nuevo'=>'comentarior#nuevo'
  get 'comentarior/index'=>'comentarior#index'
  post 'comentarior/crear'=>'comentarior#crear'
  get 'preguntar/eliminar'=>'preguntar#eliminar'
  get 'responder/eliminar'=>'responder#eliminar'
  get 'comentarior/eliminar'=>'comentarior#eliminar'
  get 'comentariop/eliminar'=>'comentariop#eliminar'
  get 'etiqueta/nuevo'=>'etiqueta#nuevo'
  post 'etiqueta/crear'=>'etiqueta#crear'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
