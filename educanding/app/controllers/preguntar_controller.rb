class PreguntarController < ApplicationController

def nuevo
     @pregunta = Question.new
end
def crear
 	 tit=params[:pregunta] [:titulo]
 	 desc=params[:pregunta] [:descripcion]
 	 us_id=current_user.id
   uni_id=current_user.Univercity_id
	 @pregunta = Question.new(titulo:tit,descripcion:desc,User_id:us_id,Univercity_id:uni_id)
   ##,:label_ids => []
	 if @pregunta.save
 		redirect_to root_path
 	end
end
def lapregunta
  @pre=Question.find(params[:id])
    @resp=Answer.where(Question_id: @pre.id)
end

def eliminar
  Question.find(params[:id]).destroy
  redirect_to root_path
end

def mejorrespuesta
  @pre=Question.find(params[:id])
  @pre.Resc_id=params[:r_id]
  @pre.save
  @resp=Answer.where(Question_id: @pre.id)
  redirect_to preguntar_lapregunta_path(:id=>@pre.id)
end

end
