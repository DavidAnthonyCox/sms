class Sale < ActiveRecord::Base
  belongs_to :payment_category
  belongs_to :payment_selection
  belongs_to :sellable
  belongs_to :payor
end
