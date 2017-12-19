class VoteqsController < ApplicationController

  def positivo
    preg_id = params[:id]
    user = Question.find(preg_id).User
    user.puntos = user.puntos + 5
    user.save
    us_id = current_user.id
    voto = VoteQ.new(positivo: true, User_id: us_id, Question_id: preg_id)
    if voto.save
     redirect_to preguntar_lapregunta_path(:id=> preg_id)
   end
  end

  def negativo
    preg_id = params[:id]
    user = Question.find(preg_id).User
    if user.puntos == 2
      user.puntos = 1
    else
      if user.puntos > 2
        user.puntos = user.puntos - 2
      end
    end
    user.save
    user = User.find(current_user.id)
    user. puntos = user.puntos - 1
    user.save
    voto = VoteQ.new(positivo: false, User_id: user.id, Question_id: preg_id)
    if voto.save
     redirect_to preguntar_lapregunta_path(:id=> preg_id)

   end
  end
end
