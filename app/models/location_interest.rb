# Schema
# ----------------
# id								int
# name							string
# interest_profile_id				int
# parent_llocation_interest_id		int
# created_at						datetime
# updated_at						datetime

class LocationInterest < ActiveRecord::Base
  belongs_to :interest_profile
  belongs_to :parent, :class_name => "LocationInterest", :foreign_key => 'parent_location_interest_id'
  has_many :children, :class_name => "LocationInterest", :foreign_key => 'parent_location_interest_id'
end
