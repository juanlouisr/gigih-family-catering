# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrderDetail, type: :model do
  it 'is valid with a order, a menu, and quantity' do
    customer = Customer.create(name: 'Makanan', email: 'juan@gigih.com', address: 'Alamat')
    order = Order.create(customer: customer, total_price: 0, status: 'NEW')
    menu = Menu.create(name: 'Makanan', price: 15_000)
    model = described_class.new(order: order, menu: menu, quantity: 1)
    expect(model).to be_valid
  end

  it 'is invalid without a order' do
    menu = Menu.create(name: 'Makanan', price: 15_000)
    model = described_class.new(order_id: nil, menu: menu, quantity: 1)
    expect(model).not_to be_valid
  end

  it 'is invalid without a menu' do
    customer = Customer.create(name: 'Makanan', email: 'juan@gigih.com', address: 'Alamat')
    order = Order.create(customer: customer, total_price: 0, status: 'NEW')
    model = described_class.new(order: order, menu: nil, quantity: 1)
    expect(model).not_to be_valid
  end
end
