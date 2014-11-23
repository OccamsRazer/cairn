# Schema
# ----------------
# id                    int
# interest_profile_id   int
# location_interest_id  int
# created_at            datetime
# updated_at            datetime

class ProfileLocation < ActiveRecord::Base
  belongs_to :interest_profile
  belongs_to :location_interest
end
