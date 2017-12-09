class LabelsController < ApplicationController
  def index

  end
def new
  @etiqueta = Label.new
end

def create
  @etiqueta=Label.new(params.require(:etiqueta).permit(:nombre))
  if @etiqueta.save
    #redirect_to univercities_path
  else
    render :new
  end
end

end
