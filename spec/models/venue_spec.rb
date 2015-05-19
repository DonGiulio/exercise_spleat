require 'rails_helper'

RSpec.describe Venue, type: :model do
  before(:each) do
    @venues = create_list :venue, 10
  end
  
  it "has several tabs" do
    @venues.each do |v|
      expect(v.tabs.size).to eq 10
    end
  end
  
end
