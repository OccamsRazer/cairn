# Schema
# ----------------
# id                   int
# document_id          int
# interest_profile_id  int
# rating               int
# created_at           datetime
# updated_at           datetime

class DocumentRating < ActiveRecord::Base
  belongs_to :document
  belongs_to :interest_profile
end
