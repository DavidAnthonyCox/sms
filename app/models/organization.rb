class Organization < ActiveRecord::Base
  has_many :emails
  has_many :locations
  has_many :addresses, :through => :location
  has_many :phones
  has_many :identities
  has_many :activity_notes
  default_scope { order('name') }
  validates :name, presence: true
  
  accepts_nested_attributes_for :identities, allow_destroy: true
end
