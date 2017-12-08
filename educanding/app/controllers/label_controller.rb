class UnivercitiesController < ApplicationController
  def index

  end
def new
  @etiqueta = Label.new
end

def create
  render plain: params[:uni].inspect
  @etiqueta=Label.new(params.require(:etiqueta).permit(:nombre))
  if @etiqueta.save
    #redirect_to univercities_path
  else
    render :new
  end
end

end
