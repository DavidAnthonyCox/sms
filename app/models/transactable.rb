class Transactable < ActiveRecord::Base
  belongs_to :item
  belongs_to :transactable_type
end
