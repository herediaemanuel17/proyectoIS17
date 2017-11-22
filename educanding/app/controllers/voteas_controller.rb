class VoteasController < ApplicationController

  def positivo
    resp_id = params[:rid]
    preg_id = params[:id]
    us_id = current_user.id
    voto = VoteAn.new(positivo: true, User_id: us_id, Answer_id: resp_id)
    if voto.save
     redirect_to preguntar_lapregunta_path(:id=> preg_id)

   end
  end

  def negativo
    resp_id = params[:rid]
    preg_id = params[:id]
    us_id = current_user.id
    voto = VoteAn.new(positivo: false, User_id: us_id, Answer_id: resp_id)
    if voto.save
     redirect_to preguntar_lapregunta_path(:id=> preg_id)

   end
  end
end
