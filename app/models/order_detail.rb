# frozen_string_literal: true

class OrderDetail < ApplicationRecord
  validates :quantity, numericality: { greater_than_or_equal_to: 1 }
  belongs_to :order
  belongs_to :menu
end
