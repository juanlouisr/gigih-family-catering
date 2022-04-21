require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        customer: nil,
        total_price: 2.5
      ),
      Order.create!(
        customer: nil,
        total_price: 2.5
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
  end
end
