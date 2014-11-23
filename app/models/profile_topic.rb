# Schema
# ----------------
# id                    int
# interest_profile_id   int
# topic_interest_id     int
# created_at            datetime
# updated_at            datetime

class ProfileTopic < ActiveRecord::Base
  belongs_to :interest_profile
  belongs_to :topic_interest
end
