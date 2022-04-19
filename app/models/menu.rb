class Menu < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :description, length: { maximum: 150 }
end
