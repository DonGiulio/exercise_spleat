FactoryGirl.define do
  factory :venue do
    sequence(:name) { |n| "venue_#{n}"}
    
    after :create do |v|
      10.times.each {create :tab, :venue => v}
    end
    
  end

end
