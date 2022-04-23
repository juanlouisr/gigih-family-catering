# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'is valid with a customer, total price and status' do
    customer = Customer.create(name: 'Makanan', email: 'juan@gigih.com', address: 'Alamat')
    model = described_class.new(customer: customer, total_price: 0, status: 'NEW')
    expect(model).to be_valid
  end
end
