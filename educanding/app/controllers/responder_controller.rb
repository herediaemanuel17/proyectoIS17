class ResponderController < ApplicationController
  def nuevo
       @resp = Answer.new
  end

  def crear
   	 desc=params[:Responder] [:descripcion]
   	 us_id=current_user.id
     preg_id= params[:pregun_id]
  	 @resp = Answer.new(descripcion:desc,User_id:us_id, Question_id:preg_id)
  	 if @resp.save
   		redirect_to preguntar_lapregunta_path(:id=> preg_id)
 	  end
  end

  def eliminar
    preg_id=params[:pid]
    Answer.find(params[:id]).destroy
    redirect_to preguntar_lapregunta_path(:id=> preg_id)
  end

  def repues
    id=params[:id]
    @pre=Question.find(id)
    @repues=Answer.where(Question_id: id)
  end


end
