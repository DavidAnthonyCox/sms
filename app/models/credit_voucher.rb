class CreditVoucher < ActiveRecord::Base
  belongs_to :transaction
  belongs_to :transactable_type
end
