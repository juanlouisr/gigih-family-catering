# frozen_string_literal: true

json.extract! order, :id, :customer, :order_details, :total_price, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
