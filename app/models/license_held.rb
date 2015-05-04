class LicenseHeld < ActiveRecord::Base
  belongs_to :license
  belongs_to :person
  default_scope { order('license_number') }
end
