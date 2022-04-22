# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'order_details/show', type: :view do
  before do
    @order_detail = assign(:order_detail, OrderDetail.create!(
                                            order: nil,
                                            menu: nil,
                                            quantity: 2
                                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
