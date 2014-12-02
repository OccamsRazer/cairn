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

  has_many :document_ratings

  def rate_relevant(profile)
    rating = DocumentRating.find_or_create_by_document_id_and_interest_profile_id(self.id, profile.id)
    rating.update_attribute(:rating, 1)
  end

  def rate_nonrelevant(profile)
    rating = DocumentRating.find_or_create_by_document_id_and_interest_profile_id(self.id, profile.id)
    rating.update_attribute(:rating, -1)
  end
end
