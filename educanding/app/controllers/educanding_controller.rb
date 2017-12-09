class EducandingController < ApplicationController

  def index
      @question=Question.all.order("created_at desc").limit(25)
    if user_signed_in? && current_user.Univercity_id != nil
      @questionMiUni= Question.where(Univercity_id:current_user.Univercity_id).order("created_at desc")
    end
  end

  def miperfil
    @usuario=User.find(params[:id])
  end

end
