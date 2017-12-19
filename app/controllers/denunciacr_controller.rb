class DenunciacrController < ApplicationController

  def nuevo
    @denu=ComplaintRan.new
    @comentarior = RemarkAn.find(params[:cid])
    @respuesta = Answer.find(params[:rid])
  end

  def denunciar
    denu=params[:denuncia] [:motivo]
    uid=current_user.id
    cid=params[:cid]
    r_id = params[:pid]
    @denu=ComplaintRan.new(motivo: denu, user_id: uid, remarkan_id: cid)
    if @denu.save
      redirect_to comentarior_index_path(:id=> r_id)
    end
  end

  def ignorar
    ComplaintRan.find(params[:id]).destroy
    redirect_to educanding_denuncias_path
  end

  def eliminar
    rid=ComplaintRan.find(params[:id]).remarkan_id
    RemarkAn.find(rid).destroy
    redirect_to educanding_denuncias_path
  end

end
