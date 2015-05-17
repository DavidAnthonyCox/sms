class SellableProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :sellable
end
