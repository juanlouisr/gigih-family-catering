# frozen_string_literal: true

module OrdersHelper
  def self.cancel_new_order_order
    orders = Order.NEW
    orders.each do |order|
      order.status = 'CANCELED'
      order.save
    end
  end
end
