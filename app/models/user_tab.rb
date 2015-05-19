class UserTab < ActiveRecord::Base
  belongs_to :tab
  belongs_to :user
end
