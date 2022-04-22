# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'customers/edit', type: :view do
  before do
    @customer = assign(:customer, Customer.create!(
                                    name: 'MyString',
                                    email: 'MyString',
                                    address: 'MyText'
                                  ))
  end

  it 'renders the edit customer form' do
    render

    assert_select 'form[action=?][method=?]', customer_path(@customer), 'post' do
      assert_select 'input[name=?]', 'customer[name]'

      assert_select 'input[name=?]', 'customer[email]'

      assert_select 'textarea[name=?]', 'customer[address]'
    end
  end
end
