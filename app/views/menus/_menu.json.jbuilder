json.extract! menu, :id, :name, :price, :description, :categories, :created_at, :updated_at
json.url menu_url(menu, format: :json)
