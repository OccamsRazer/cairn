# Schema
# ----------------
# id                        int
# name                      string
# parent_topic_interest_id  int
# created_at                datetime
# updated_at                datetime

class TopicInterest < ActiveRecord::Base
  belongs_to :parent, :class_name => "TopicInterest", :foreign_key => 'parent_topic_interest_id'
  has_many :children, :class_name => "TopicInterest", :foreign_key => 'parent_topic_interest_id'
end
