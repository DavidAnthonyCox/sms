class CreditVoucher < ActiveRecord::Base
  belongs_to :sale
  belongs_to :transactable_type
end
