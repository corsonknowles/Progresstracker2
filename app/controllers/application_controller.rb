class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def login(user)
    session[:session_token] = user.session_token
  end

  helper_method :login, :current_user


  def current_user
    debugger
    return nil unless session[:session_token]
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

end
