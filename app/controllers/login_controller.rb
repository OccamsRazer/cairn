class LoginController < ApplicationController
  def index
  end

  def login
    user = User.find_by_email(params[:email])
    redirect_to :root and return unless user && user.password == params[:password]
    session[:user_id] = user.id
    session[:profile_id] = user.interest_profiles.first
    redirect_to :search
  end

  def logout
    session[:user_id] = nil
    session[:profile_id] = nil
    @user = nil
    @profile = nil
    redirect_to :root
  end
end
