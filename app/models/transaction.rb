class Transaction < ActiveRecord::Base
  belongs_to :payment_type
  belongs_to :payment_sub_type
  belongs_to :transactable
  belongs_to :payor
end
