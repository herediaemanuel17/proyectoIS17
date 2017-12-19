class EducandingController < ApplicationController

  def index
  if user_signed_in?
    if current_user.activa == false
      flash[:notice]="Gracias por volver a Educanding!!!"
      current_user.activa=true
      current_user.save
    end
  end

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

  def cerrar
    user = User.find(current_user.id)
    user.activa = false
    user.save
    redirect_to educanding_estasseguro_path
  end

  def no
    user = User.find(current_user.id)
    user.activa = true
    user.save
    redirect_to root_path
  end
end
