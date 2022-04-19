require 'rails_helper'

RSpec.describe "menu_categories/index", type: :view do
  before(:each) do
    assign(:menu_categories, [
      MenuCategory.create!(
        menu: nil,
        category: nil
      ),
      MenuCategory.create!(
        menu: nil,
        category: nil
      )
    ])
  end

  it "renders a list of menu_categories" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
