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
    @resp=@pre.Answers
end

end
