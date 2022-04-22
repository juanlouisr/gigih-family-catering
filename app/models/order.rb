class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details, dependent: :destroy
  accepts_nested_attributes_for :order_details, allow_destroy: true
  enum :status, %i[NEW PAID CANCELED]
  def current_price
    order_details.map { |d| d.menu.price * d.quantity }.sum
  end
end
