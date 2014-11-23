# Schema
# ----------------
# id                    int
# interest_profile_id   int
# organization_id       int
# created_at            datetime
# updated_at            datetime

class ProfileOrganization < ActiveRecord::Base
  belongs_to :interest_profile
  belongs_to :organization
end
