class DocumentController < ApplicationController
  before_filter :set_doc, :except => [:create, :index]
  before_filter :ensure_login

  def show
  end

  def index
  end

  def edit
  end

  def create
  end

  def rate_relevant
    @document.rate_relevant(@profile)
  end

  def rate_nonrelevant
    @document.rate_nonrelevant(@profile)
  end

  private

  def set_doc
    @document = Document.find(params[:id])
  end
end
