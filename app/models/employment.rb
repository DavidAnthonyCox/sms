class Employment < ActiveRecord::Base
  belongs_to :organization
  belongs_to :person
  default_scope { order('organization_id') }
end
