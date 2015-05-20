class VenueRow
  attr_reader :name, :transactions, :value
  
  def initialize (attributes)
    @name = attributes[:name]
    @transactions = attributes[:transactions]
    @value = attributes[:value]
  end
end

class VenueReport
  def initialize(venues)
    @venues = venues
  end
  
  def generate
    result = @venues.map do |v|
      cur_tabs = v.tabs
      number = cur_tabs.inject(0) {|sum, tab| sum + tab.user_tab.inject(0) { |cur, ut| cur + ut.payments.count }}
      total = cur_tabs.inject(0) {|sum, tab| sum + tab.total}
      VenueRow.new(name: v.name, transactions: number, value: total)
    end
    
    result.sort_by! {|o| o.value}.reverse
  end
end
