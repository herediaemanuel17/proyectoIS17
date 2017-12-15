class UnivercitiesController < ApplicationController
  def index
    @uni=Univercity.all
  end

def new
  @uni = Univercity.new
end

def crear
  @uni=Univercity.new(params.require(:uni).permit(:nombre, :direccion, :pais))
  if @uni.save
    redirect_to univercities_index_path
  end
end

end
