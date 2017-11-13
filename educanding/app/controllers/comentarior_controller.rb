class ComentariorController < ApplicationController

  def index
    r_id=params[:id]
    @comentariosr = RemarkAn.where(Answer_id:params[:id]).all
    @respuesta = Answer.find(r_id)
  end

  def nuevo
       @comentarior = RemarkAn.new
  end

  def crear
   	 desc=params[:Comer] [:descripcion]
   	 us_id=current_user.id
     r_id=params[:id]
  	 @comentarior = RemarkAn.new(descripcion:desc,User_id:us_id, Answer_id:r_id)
  	 if @comentarior.save
       redirect_to comentarior_index_path(:id=> r_id)
 	  end
  end
end
