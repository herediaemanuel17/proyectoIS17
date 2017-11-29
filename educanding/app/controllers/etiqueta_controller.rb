class EtiquetaController < ApplicationController
  def nuevo
     @etiqueta = Label.new
  end

  def crear
      desc=params[:etiqueta] [:nombre]
      @etiqueta = Label.new(nombre: desc)
      if @etiqueta.save
        redirect_to root_path
      end
  end
end
