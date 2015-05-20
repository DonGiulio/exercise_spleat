require 'rails_helper'

RSpec.describe UserTab, type: :model do
  
  before(:each) do 
    @tab = create :tab
  end
  
  it "has several users" do 
    expect(@tab.users.size).to be 10
  end
  
  it "has several payments" do
    expect(@tab.user_tab.payments).to be 10
  end
  
end
