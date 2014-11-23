# Schema
# ----------------
# id                       int
# name                     string
# parent_organization_id   int
# created_at               datetime
# updated_at               datetime

class Organization < ActiveRecord::Base
  belongs_to :parent, :class_name => "Organization", :foreign_key => 'parent_organization_id'
  has_many :children, :class_name => "Organization", :foreign_key => 'parent_organization_id'
end
