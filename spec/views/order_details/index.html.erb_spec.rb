# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'order_details/index', type: :view do
  before do
    assign(:order_details, [
             OrderDetail.create!(
               order: nil,
               menu: nil,
               quantity: 2
             ),
             OrderDetail.create!(
               order: nil,
               menu: nil,
               quantity: 2
             )
           ])
  end

  it 'renders a list of order_details' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end
