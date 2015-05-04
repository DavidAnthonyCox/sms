class ContactCategory < ActiveRecord::Base
  has_many :address
  has_many :phone
  has_many :email
  default_scope { order('name') }
end
