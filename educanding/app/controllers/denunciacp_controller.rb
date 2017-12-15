class DenunciacpController < ApplicationController

  def nuevo
    @denu=ComplaintRq.new
    @comentario = RemarkQ.find(params[:cid])
    @pregunta = Question.find(params[:pid])
  end

  def denunciar
    denu=params[:denuncia] [:motivo]
    uid=current_user.id
    cid=params[:cid]
    @denu=ComplaintRq.new(motivo: denu, user_id: uid, remarkq_id: cid)
    if @denu.save
      redirect_to comentariop_index_path(:id=> params[:pid])
    end
  end

  def ignorar
    ComplaintRq.find(params[:id]).destroy
    redirect_to educanding_denuncias_path
  end

  def eliminar
    RemarkQ.find(ComplaintRq.find(params[:id]).remarkq_id).destroy
    ComplaintRq.find(params[:id]).destroy
    redirect_to educanding_denuncias_path
  end

end
