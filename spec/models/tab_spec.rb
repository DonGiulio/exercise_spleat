require 'rails_helper'

RSpec.describe Tab, type: :model do
  before(:each) do
    @venue = create :venue
    @tab = @venue.tabs.first
  end
  
  it "has several users" do
    expect(@tab.users.size).to be 5
  end
  
  it "calculates the total of the payments" do
    expect(@tab.total).to be > 0.0
  end
end
