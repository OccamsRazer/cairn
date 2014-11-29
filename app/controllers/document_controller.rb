class DocumentController < ApplicationController
  before_filter :set_doc, :except => [:create, :index]

  def show
  end

  def index
  end

  def edit
  end

  def create
  end

  def rate_relevant
    
  end

  def rate_irrelevant
  end

  private

  def set_doc
    @document = Document.find(params[:id])
  end
end
