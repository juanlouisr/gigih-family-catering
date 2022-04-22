# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'customers/show', type: :view do
  before do
    @customer = assign(:customer, Customer.create!(
                                    name: 'Name',
                                    email: 'Email',
                                    address: 'MyText'
                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/MyText/)
  end
end
