class EducandingController < ApplicationController

  def index
      @question=Question.all.order("created_at desc").limit(25)
  end
end
