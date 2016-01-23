class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_current_user

  def set_current_user
    user_id = session[:user_id]
    @current_user = User.find(user_id) rescue User.first
  end

  def current_user
    set_current_user if @current_user.nil?
    @current_user
  end

end
