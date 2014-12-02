class InterestProfileController < ApplicationController
  before_filter :ensure_login

  def show
    @page_profile = InterestProfile.find(params[:id])
  end

  def index
    @profiles = @user.interest_profiles.all
  end

  def edit
  end

  def create
  end
end
