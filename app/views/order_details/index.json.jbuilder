# frozen_string_literal: true

json.array! @order_details, partial: 'order_details/order_detail', as: :order_detail
