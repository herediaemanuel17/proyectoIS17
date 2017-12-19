class LabelsController < ApplicationController
  def index
    @etiquetas=Label.all
  end

  def new
    @etiqueta = Label.new
  end

  def crear
    @etiqueta=Label.new(params.require(:etiqueta).permit(:nombre))
    if @etiqueta.save
      redirect_to labels_index_path
    else
      render :new
    end
  end

end
