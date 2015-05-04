class Address < ActiveRecord::Base
  belongs_to :contact_category
  belongs_to :person
  belongs_to :state
  belongs_to :location
  default_scope { order('zip') }
end

# a location has a name and an address
# a corporation and a course offering both have locations, so we 
# only reference location or person here.