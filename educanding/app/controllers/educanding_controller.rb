class EducandingController < ApplicationController
  def index
    @question=Question.all
  end


end
