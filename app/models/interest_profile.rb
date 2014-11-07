# Schema
# ----------------
# id				int
# user_id			int
# created_at		datetime
# updated_at		datetime

class InterestProfile < ActiveRecord::Base
  belongs_to :user
end
