class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_user_and_profile

  before_filter :set_defaults

  private

  def set_user_and_profile
    @user ||= session[:user_id] && User.find(session[:user_id])
    @profile ||= session[:profile_id] && InterestProfile.find(session[:profile_id])
  end

  def ensure_login
    redirect_to :root unless @user
  end

  def set_defaults
    @title = 'Cairn'
    @body_attributes=""
  end
end
