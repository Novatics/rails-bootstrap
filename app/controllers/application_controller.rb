class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  
  def render_not_found
    render file: "public/404.html", status: 404, layout: false      
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
