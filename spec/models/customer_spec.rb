require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'is valid with a name' do
    model = described_class.new(name: 'Makanan', email: 'juan@gigih.com', address: 'Alamat')
    expect(model).to be_valid
  end

  it 'is invalid with a invalid email' do
    model = described_class.new(name: 'Makanan', email: 'juan', address: 'Alamat')
    model.valid?
    expect(model.errors[:email]).to include('is invalid')
  end
end
