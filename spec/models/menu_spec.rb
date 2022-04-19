require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'is valid with a name and a price' do
    menu = Menu.new(
      name: 'Makanan',
      price: 15_000
    )

    expect(menu).to be_valid
  end

  it 'is invalid without a name or and a price' do
    menu = Menu.new(
      name: nil,
      price: 15_000
    )

    menu.valid?
    expect(menu.errors[:name]).to include("can't be blank")

    menu2 = Menu.new(
      name: 'Makanan',
      price: nil
    )

    menu2.valid?
    expect(menu2.errors[:price]).to include("can't be blank")
  end

  it 'is invalid with a duplicate name' do
    Menu.create(
      name: 'Makanan',
      price: 15_000
    )

    menu2 = Menu.new(
      name: 'Makanan',
      price: 11_000
    )

    menu2.valid?
    expect(menu2.errors[:name]).to include('has already been taken')
  end
end
