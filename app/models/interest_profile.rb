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
    Rails.cache.fetch("profile/#{self.id}") do
      org_vector = profile_organizations.map{|x| "#{x.class}##{x.id}" }
      topic_vector = profile_topics.map{|x| "#{x.class}##{x.id}" }
      loc_vector = profile_locations.map{|x| "#{x.class}##{x.id}" }

      org_vector + topic_vector + loc_vector
    end
  end

  def similarity_score(other_profile)
    Jaccard.coefficient(self.build_interest_vector, other_profile.build_interest_vector)
  end

  def self.vector_size
    Organization.count + TopicInterest.count + LocationInterest.count
  end
end
