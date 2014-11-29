class SearchController < ApplicationController
  def index
  end

  def cairn
    @results = Search.cairn_search(@profile, params[:query])
    redirect_to :results_path
  end

  def text
    @results = Search.text_search(@profile, params[:query])
    redirect_to :results_path
  end

  def results
  end
end
