# Schema
# ----------------
# id          int
# name        string
# email       string
# password    string
# created_at  datetime
# updated_at  datetime

class User < ActiveRecord::Base
  has_many :interest_profiles
end
