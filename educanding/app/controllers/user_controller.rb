class UserController < ApplicationController

  def new
    @usuario = User.new
    ##@password = string   ##preguntar el miercoles
  end

  def create
    params{:usuario}
    ##if :usuario.password != :password
    User.create(nombre: ":usuario.nombre", apellido: ":usuario.apellido", email: "usuario.email", password: ":usuario.password")
  end

end
