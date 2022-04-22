# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
