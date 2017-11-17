class VoteqsController < ApplicationController

  def positivo
    preg_id = params[:id]
    us_id = current_user.id
    voto = VoteQ.new(positivo: true, User_id: us_id, Question_id: preg_id)
    if voto.save
     redirect_to preguntar_lapregunta_path(:id=> preg_id)
   end
  end
 
  def negativo
    preg_id = params[:id]
    us_id = current_user.id
    voto = VoteQ.new(positivo: false, User_id: us_id, Question_id: preg_id)
    if voto.save
     redirect_to preguntar_lapregunta_path(:id=> preg_id)
   end
  end
end
