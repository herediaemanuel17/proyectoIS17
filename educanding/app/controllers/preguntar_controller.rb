class PreguntarController < ApplicationController

def nuevo
     @pregunta = Question.new
end
def crear
 	 tit=params[:pregunta] [:titulo]
 	 desc=params[:pregunta] [:descripcion]
 	 us_id=current_user.id
	 @pregunta = Question.new(titulo:tit,descripcion:desc,User_id:us_id)
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

end
