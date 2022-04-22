# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

CATEGORY_COUNT = 30
MENU_COUNT = 100
CUSTOMER_COUNT = 20
MENU_CATEGORY_COUNT = 150
ORDER_COUNT = 100
ORDER_DETAIL_COUNT = 200

CATEGORY_COUNT.times do |_|
  Category.create(name: Faker::Food.ethnic_category)
end

MENU_COUNT.times do |_|
  Menu.create(
    name: Faker::Food.dish,
    price: Faker::Number.between(from: 1000, to: 100_000),
    description: Faker::Food.description
  )
end

MENU_CATEGORY_COUNT.times do |_|
  MenuCategory.create(
    menu_id: Faker::Number.between(from: 1, to: MENU_COUNT),
    category_id: Faker::Number.between(from: 1, to: CATEGORY_COUNT)
  )
end

CUSTOMER_COUNT.times do |_|
  Customer.create(
    name: Faker::Name.unique.name,
    email: Faker::Internet.email,
    address: Faker::Address.full_address
  )
end

ORDER_COUNT.times do |_|
  Order.create(
    customer_id: Faker::Number.between(from: 1, to: CUSTOMER_COUNT),
    total_price: 0,
    status: 0
  )
end

ORDER_DETAIL_COUNT.times do |_|
  OrderDetail.create(
    order_id: Faker::Number.between(from: 1, to: ORDER_COUNT),
    menu_id: Faker::Number.between(from: 1, to: MENU_COUNT),
    quantity: Faker::Number.between(from: 1, to: 10)
  )
end

# Update price
for i in 1..ORDER_COUNT do
  order = Order.find(i)
  order.total_price = order.current_price
  if order.total_price.positive?
    order.save
  else
    order.destroy
  end
end
