class Employment < ActiveRecord::Base
  belongs_to :corporation
  belongs_to :person
  default_scope { order('corporation_id') }
end
