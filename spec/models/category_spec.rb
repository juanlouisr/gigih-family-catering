# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'is valid with a name' do
    category = described_class.new(
      name: 'Makanan'
    )

    expect(category).to be_valid
  end

  it 'is invalid without a name' do
    category = described_class.new(
      name: nil
    )

    expect(category).not_to be_valid
  end

  it 'is invalid with duplicate name' do
    described_class.create(
      name: 'Makanan'
    )
    category2 = described_class.new(
      name: 'Makanan'
    )

    category2.valid?
    expect(category2.errors[:name]).to include('has already been taken')
  end
end
