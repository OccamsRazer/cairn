# Schema
# ----------------
# id                            int
# name                          string
# parent_location_interest_id   int
# created_at                    datetime
# updated_at                    datetime

class LocationInterest < ActiveRecord::Base
  belongs_to :parent, :class_name => "LocationInterest", :foreign_key => 'parent_location_interest_id'
  has_many :children, :class_name => "LocationInterest", :foreign_key => 'parent_location_interest_id'
end
