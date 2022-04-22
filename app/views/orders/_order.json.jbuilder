json.extract! order, :id, :customer, :order_details, :total_price, :created_at, :updated_at
json.url order_url(order, format: :json)
