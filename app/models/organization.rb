class Organization < ActiveRecord::Base
  has_many :email
  has_many :location
  has_many :address, :through => :location
  has_many :phone
  has_many :identity
  has_many :activity_note
  default_scope { order('name') }
  validates :name, presence: true
end
