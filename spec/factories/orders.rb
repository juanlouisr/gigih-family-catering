FactoryBot.define do
  factory :order do
    customer { nil }
    total_price { 1.5 }
  end
end
