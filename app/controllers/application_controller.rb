class ApplicationController < ActionController::Base
   helper_method :current_user, :logged_in?
    
   
    before_action :authenticate_user

    private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def require_user
    redirect_to login_path unless logged_in?
  end

   def authenticate_user
     if current_user.nil?
       flash[:error] = "You must be logged in to access this section"
       redirect_to login_path
     end
   end

end
