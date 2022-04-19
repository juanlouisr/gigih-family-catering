require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'is valid with a name and a price' do
    menu = Menu.new(
      name: 'Makanan',
      price: 15_000
    )

    expect(menu).to be_valid
  end
end
