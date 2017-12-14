class DenunciapController < ApplicationController

  def nuevo
    @denu=ComplaintQ.new
    @pregunta = Question.find(params[:pid])
  end

  def denunciar
    denu=params[:denuncia] [:motivo]
    uid=current_user.id
    pid=params[:pid]
    @denu=ComplaintQ.new(motivo: denu, User_id: uid, Question_id: pid)
    if @denu.save
      redirect_to preguntar_lapregunta_path(:id=> pid)
    end
  end

end
