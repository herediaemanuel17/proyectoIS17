class ComentariorController < ApplicationController
  def index
    id = params[:id]
    @comentariosr = RemarkAn.where(Answer_id:params[:id]).all
    @respuesta = Answer.find(id)
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

  def eliminar
    rid=params[:id]
    RemarkAn.find(params[:cid]).destroy
    redirect_to comentarior_index_path(:id=> rid)
  end
end
