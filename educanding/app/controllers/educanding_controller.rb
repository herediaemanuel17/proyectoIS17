class EducandingController < ApplicationController

  def index
      @question=Question.all.order("created_at desc").limit(25)
    if user_signed_in?
      @questionMiUni= Question.where(Univercity_id:current_user.Univercity_id)
      questions=Question.all
      questions.each do |q|
        cantidad=Answer.where(Question_id:q.id).count  
      end
      @questionMenosRespondidas=Question.all
    end
  end

end
