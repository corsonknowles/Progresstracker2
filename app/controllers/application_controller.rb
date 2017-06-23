class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def login(user)
    session[:session_token] = user.session_token
  end

end
