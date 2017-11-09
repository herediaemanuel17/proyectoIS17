class PreguntarController < ApplicationController
  def new
     @pregunta = Question.new
  end

end
