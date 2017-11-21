class ResponderController < ApplicationController
  def nuevo
       @resp = Answer.new
  end

  def crear
   	 desc=params[:Responder] [:descripcion]
   	 us_id=current_user.id
     preg_id= params[:pregun_id]
  	 @resp = Answer.new(descripcion:desc,User_id:us_id, Question_id:resp_id)
  	 if @resp.save
   		redirect_to preguntar_lapregunta_path(:id=> resp_id)
 	  end
  end


end
