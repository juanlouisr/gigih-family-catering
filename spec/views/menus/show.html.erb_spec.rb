# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'menus/show', type: :view do
  before do
    @menu = assign(:menu, Menu.create!(
                            name: 'Name',
                            price: 2.5
                          ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
  end
end
