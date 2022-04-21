class Menu < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :description, length: { maximum: 150 }
  has_many :menu_categories, dependent: :destroy
  has_many :categories, through: :menu_categories
end
