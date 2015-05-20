class VenueRow
  attr_accessor :name, :transactions, :value
end

class VenueReport
  def initialize(venues)
    @venues = venues
  end
  
  def generate
    @venues.map do |v|
      cur_tabs = v.tabs
      total = cur_tabs.inject {|sum, tab| sum + tab.value} 
      VenueRow.new(name: v.name, transactions: cur_tabs.size, value: total)
    end
  end
end
