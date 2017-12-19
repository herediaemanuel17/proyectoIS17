class VoteasController < ApplicationController

  def positivo
    resp_id = params[:rid]
    preg_id = params[:id]
    user = Answer.find(resp_id).User
    user.puntos = user.puntos + 10
    user.save
    us_id = current_user.id
    voto = VoteAn.new(positivo: true, User_id: us_id, Answer_id: resp_id)
    if voto.save
     redirect_to preguntar_lapregunta_path(:id=> preg_id)
   end
  end

  def negativo
    resp_id = params[:rid]
    preg_id = params[:id]
    user = Answer.find(preg_id).User
    if user.puntos == 2
      user.puntos = 1
    else
      if user.puntos > 2
        user.puntos = user.puntos - 2
      end
    end
    user.save
    user = User.find(current_user.id)
    user.puntos = user.puntos - 1
    user.save
    us_id = current_user.id
    voto = VoteAn.new(positivo: false, User_id: us_id, Answer_id: resp_id)
    if voto.save
     redirect_to preguntar_lapregunta_path(:id=> preg_id)

   end
  end
end
