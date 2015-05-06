class Location < ActiveRecord::Base
  belongs_to :course_offering
  belongs_to :organization
  has_one :address
  default_scope { order('name') }
end
