class PermisosController < ApplicationController

  def index
    @permisos=Permit.all.order("puntos asc")
  end

  def nuevo
    @permisos=Permit.find(params[:id])
  end

  def editar
    p=Permit.find(params[:id])
    p.puntos=params[:permi][:puntos]
    if p.save
      redirect_to permisos_index_path
    end
  end

end
