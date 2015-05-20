class UserTab < ActiveRecord::Base
  belongs_to :tab
  belongs_to :user
  
  has_many :payments
  
  def total
    self.payments.inject(0) {|sum, payment| sum + payment.amount}
  end
end
