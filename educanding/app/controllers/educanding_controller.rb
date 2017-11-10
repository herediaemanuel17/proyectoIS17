class EducandingController < ApplicationController
  def index
  if !user_signed_in?
      @question=Question.all
     else
        @question=Question.where(User_id:current_user.id)
      end
  end
end
