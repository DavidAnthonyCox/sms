class Address < ActiveRecord::Base
  belongs_to :contact_category
  belongs_to :person
  belongs_to :state
  belongs_to :location
  default_scope { order('zip') }

  validates :contact_category_id, presence: true
  validates :state_id, presence: true
  validates :zip, presence: true
  validates :city, presence: true
  validates :street_number, presence: true
  validates :street_name, presence: true

end

# a location has a name and an address
# a organization and a course offering both have locations, so we 
# only reference location or person here.