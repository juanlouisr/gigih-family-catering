FactoryBot.define do
  factory :order_detail do
    order { nil }
    menu { nil }
    quantity { 1 }
  end
end
