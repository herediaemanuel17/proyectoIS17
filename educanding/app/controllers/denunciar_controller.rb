class DenunciarController < ApplicationController

  def nuevo
    @denu=ComplaintAn.new
    @respuesta = Answer.find(params[:rid])
    @pregunta = Question.find(params[:pid])
  end

  def denunciar
    denu=params[:denuncia] [:motivo]
    uid=current_user.id
    rid=params[:rid]
    pid=params[:pid]
    @denu=ComplaintAn.new(motivo: denu, User_id: uid, Answer_id: rid)
    if @denu.save
      redirect_to preguntar_lapregunta_path(:id=> pid)
    end
  end

end
