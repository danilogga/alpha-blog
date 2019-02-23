class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
    # localiza e retorna o usuário se ele existir na session
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    # retorna se o current_user existe
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged to perform that action"
      redirect_to root_path
    end
  end
end
