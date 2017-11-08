class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource_or_scope)
    session[:cuenta]=current_user.account_type
  end
end
