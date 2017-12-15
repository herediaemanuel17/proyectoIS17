class PreguntarController < ApplicationController

def nuevo
     @pregunta = Question.new
end
def crear
 	 #tit=params[:pregunta] [:titulo]
 	 #desc=params[:pregunta] [:descripcion]
 	 #us_id=current_user.id
   #uni_id=current_user.Univercity_id
	 #@pregunta = Question.new(titulo:tit,descripcion:desc,User_id:us_id,Univercity_id:uni_id)
   ##,:label_ids => []
   def question_params
      params.require(:pregunta).permit(:titulo, :descripcion, :User_id, :University_id, :Label_ids => [])
end
  @pregunta = Question.new(question_params)
 @pregunta.User_id=current_user.id
 if current_user.Univercity != nil
    @pregunta.Univercity_id = current_user.Univercity_id
  end
	 if @pregunta.save
 		redirect_to root_path
 	end
end

def buscar_pregx
      @questions = Question.includes(:labels).where('labels.id' => params['Label_ids']).all
      @numero = params['tag_ids']
       
      #@tags = Tag.all
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
