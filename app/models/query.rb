# Schema
# ----------------
# id                   int
# interest_profile_id  int
# query                string
# created_at           datetime
# updated_at           datetime

class Query < ActiveRecord::Base
  belongs_to :interest_profile
end
