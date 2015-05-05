class OutsideIdentifier < ActiveRecord::Base
  has_many :outside_identifier_instance

  validates :name, presence: true
end
