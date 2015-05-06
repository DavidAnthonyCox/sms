class Phone < ActiveRecord::Base
  belongs_to :contact_category
  belongs_to :organization
  belongs_to :person
  default_scope { order('area_code') }
end
