# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MenuCategory, type: :model do
  it 'is invalid without a reference' do
    menucategory = described_class.new(
      menu_id: 5,
      category_id: 5
    )
    expect(menucategory).not_to be_valid
  end

  it 'is valid with a reference' do
    category = Category.create(
      name: 'Kategori',
      id: 5
    )
    menu = Menu.create(
      name: 'Makanan',
      price: 11_000,
      id: 5
    )
    expect(category.id).to be(5)
    expect(menu.id).to be(5)
    menucategory = described_class.new(
      menu_id: 5,
      category_id: 5
    )
    expect(menucategory).to be_valid
  end
end
