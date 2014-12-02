class SearchController < ApplicationController
  before_filter :ensure_login

  def index
  end

  def cairn
  end

  def text
  end

  def results
    redirect_to :search and return if params[:query].blank?
    skip_query_creation = params[:page].nil?
    if params[:type] == 'cairn'
      @results = Search.cairn_search(@profile, params[:query], params[:page], skip_query_creation)
    else
      @results = Search.text_search(@profile, params[:query], params[:page], skip_query_creation)
    end
  end
end
