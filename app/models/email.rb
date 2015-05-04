class Email < ActiveRecord::Base
  belongs_to :contact_category
  belongs_to :corporation
  belongs_to :person
  default_scope { order('address') }
end
