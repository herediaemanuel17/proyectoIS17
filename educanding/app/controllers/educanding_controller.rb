class EducandingController < ApplicationController

  def index

  if params[:query].present?
      @question = Question.search(params[:query])
      @query = params[:query]
  else
      @question = Question.all.order("created_at desc").limit(25)
  end

    #@question=Question.all.order("created_at desc").limit(25)
    if user_signed_in? && current_user.Univercity_id != nil
      @questionMiUni= Question.where(Univercity_id:current_user.Univercity_id).order("created_at desc")
    end
  end

  def miperfil
    @usuario=User.find(params[:id])
  end

  def denuncias
    @denup=ComplaintQ.all
    @denur=ComplaintAn.all
    @denuncr=ComplaintRan.all
    @denuncp=ComplaintRq.all
  end
end
