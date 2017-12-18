Rails.application.routes.draw do
  devise_for :users

  root 'educanding#index'
  get 'educanding/miperfil'=>'educanding#miperfil'
  get 'educanding/cerrar'=>'educanding#cerrar'
  get 'educanding/no'=>'educanding#no'
  get 'educanding/estasseguro'=>'educanding#estasseguro'
  get 'preguntar/mejorrespuesta'=>'preguntar#mejorrespuesta'
  get 'educanding/denuncias'=>'educanding#denuncias'
  get 'preguntar/nuevo'=>'preguntar#nuevo'
  post 'preguntar/crear'=>'preguntar#crear'
  get 'denunciap/nuevo'=>'denunciap#nuevo'
  get 'denunciap/ignorar'=>'denunciap#ignorar'
  get 'denunciap/eliminar'=>'denunciap#eliminar'
  post 'denunciap/denunciar'=>'denunciap#denunciar'
  get 'denunciar/nuevo'=>'denunciar#nuevo'
  get 'denunciar/ignorar'=>'denunciar#ignorar'
  get 'denunciar/eliminar'=>'denunciar#eliminar'
  post 'denunciar/denunciar'=>'denunciar#denunciar'
  get 'denunciacr/nuevo'=>'denunciacr#nuevo'
  get 'denunciacr/ignorar'=>'denunciacr#ignorar'
  get 'denunciacr/eliminar'=>'denunciacr#eliminar'
  post 'denunciacr/denunciar'=>'denunciacr#denunciar'
  get 'denunciacp/nuevo'=>'denunciacp#nuevo'
  get 'denunciacp/ignorar'=>'denunciacp#ignorar'
  get 'denunciacp/eliminar'=>'denunciacp#eliminar'
  post 'denunciacp/denunciar'=>'denunciacp#denunciar'
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
  get 'preguntar/buscar'=>'preguntar#buscar_pregx'
  get 'responder/eliminar'=>'responder#eliminar'
  get 'comentarior/eliminar'=>'comentarior#eliminar'
  get 'comentariop/eliminar'=>'comentariop#eliminar'
  get 'labels/index'=>'labels#index'
  get 'labels/new'=>'labels#new'
  post 'labels/crear'=>'labels#crear'
  post 'univercities/crear'=>'univercities#crear'
  get 'univercities/index'=>'univercities#index'
  get 'univercities/new'=>'univercities#new'
  get 'permisos/index'=>'permisos#index'
  get 'permisos/nuevo'=>'permisos#nuevo'
  post 'permisos/editar'=>'permisos#editar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
