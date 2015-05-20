FactoryGirl.define do
  factory :payment do
    amount {rand * 100}
    user_tab nil
  end

end
