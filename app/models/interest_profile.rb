# Schema
# ----------------
# id				int
# user_id			int
# name          string
# created_at		datetime
# updated_at		datetime

class InterestProfile < ActiveRecord::Base
  belongs_to :user
  has_many :profile_organizations
  has_many :profile_topics
  has_many :profile_locations
  has_many :queries
  has_many :document_rating

  def build_interest_vector
    org_vector = [0] * Organization.count
    topic_vector = [0] * TopicInterest.count
    loc_vector = [0] * LocationInterest.count

    profile_organizations.each do |x|
      org_vector[ x.organization_id - 1 ] = 1
    end
    profile_topics.each do |x|
      topic_vector[ x.topic_interest_id - 1 ] = 1
    end
    profile_locations.each do |x|
      loc_vector[ x.location_interest_id - 1 ] = 1
    end

    org_vector + topic_vector + loc_vector
  end

  def self.vector_size
    Organization.count + TopicInterest.count + LocationInterest.count
  end
end
