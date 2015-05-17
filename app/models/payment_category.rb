class PaymentCategory < ActiveRecord::Base
  belongs_to :payment_selection
end
