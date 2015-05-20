class Tab < ActiveRecord::Base
  belongs_to :venue
  
  has_many :user_tab
  has_many :users, through: :user_tab
  
  def total
    self.user_tab.inject(0) {|sum, ut| sum + ut.total}
  end
end
