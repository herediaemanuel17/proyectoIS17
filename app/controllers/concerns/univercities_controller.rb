class UnivercitiesController < ApplicationController
  def index

  end
def new
  @uni = Univercity.new
end

def create
  render plain: params[:uni].inspect
  @uni=Univercity.new(params.require(:uni).permit(:nombre))
  if @uni.save
    #redirect_to univercities_path
  else
    render :new
  end
end

end
