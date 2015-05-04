class State < ActiveRecord::Base
  has_many :address
  default_scope { order('name') }
end
