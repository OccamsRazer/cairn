class SearchController < ApplicationController
  before_filter :ensure_login

  def index
  end

  def cairn
    redirect_to :search and return if params[:query].blank?
    @results = Search.cairn_search(@profile, params[:query])
    redirect_to :search_results
  end

  def text
    redirect_to :search and return if params[:query].blank?
    @results = Search.text_search(@profile, params[:query])
    redirect_to :search_results
  end

  def results
  end
end
