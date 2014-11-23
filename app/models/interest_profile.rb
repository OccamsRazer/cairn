# Schema
# ----------------
# id				int
# user_id			int
# created_at		datetime
# updated_at		datetime

class InterestProfile < ActiveRecord::Base
  belongs_to :user
  has_many :queries
  has_many :document_rating

  def build_interest_vector
  end

end
