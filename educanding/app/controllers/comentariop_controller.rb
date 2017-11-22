class ComentariopController < ApplicationController
  def index
    #p_id=params[:id]
    @comentariosp = RemarkQ.where(Question_id:params[:id]).all
    @pregunta = Question.find(p_id)
  end

  def nuevo
       @comentariop = RemarkQ.new
  end

  def crear
   	 desc=params[:Comep] [:descripcion]
   	 us_id=current_user.id
     p_id=params[:id]
  	 @comentariop = RemarkQ.new(descripcion:desc,User_id:us_id, Question_id:p_id)
  	 if @comentariop.save
       redirect_to comentariop_index_path(:id=> p_id)
 	  end
  end
end
