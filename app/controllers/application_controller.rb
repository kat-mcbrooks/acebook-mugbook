class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authorize
    redirect_to login_url, alert: "Not authorized" if session[:user_id].nil?
  end
end
