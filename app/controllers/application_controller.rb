class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    puts session[:token]
    if session[:token]
      @current_user = Student.find_by(token: session[:userToken])
    else
      session[:token] = 0
    end
    return @current_user
  end


  def require_user
    redirect_to root_path unless current_user
  end

  def require_admin
    puts current_user
    if current_user == nil or current_user.level != 4
      redirect_to root_path
    end
  end
end
