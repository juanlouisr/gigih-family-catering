# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'menu_categories/show', type: :view do
  before do
    @menu_category = assign(:menu_category, MenuCategory.create!(
                                              menu: nil,
                                              category: nil
                                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
