class ResponderController < ApplicationController
  def nuevo
       @respuesta = Answer.new
  end

  def crear
   	 desc=params[:Responder] [:descripcion]
   	 us_id=current_user.id
     preg_id= params[:pregun_id]
  	 @respuesta = Answer.new(descripcion:desc,User_id:us_id, Question_id:preg_id)
  	 if @respuesta.save
   		redirect_to preguntar_lapregunta_path(:id=> preg_id)
 	  end
  end
end
