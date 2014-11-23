# Schema
# ----------------
# id          int
# docno       string
# text        text
# created_at  datetime
# updated_at  datetime

require "elasticsearch/model"

class Document < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks


end
