# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'customers/index', type: :view do
  before do
    assign(:customers, [
             Customer.create!(
               name: 'Name',
               email: 'Email',
               address: 'MyText'
             ),
             Customer.create!(
               name: 'Name',
               email: 'Email',
               address: 'MyText'
             )
           ])
  end

  it 'renders a list of customers' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Email'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end
