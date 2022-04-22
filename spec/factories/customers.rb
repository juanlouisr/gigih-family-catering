# frozen_string_literal: true

FactoryBot.define do
  factory :customer do
    name { 'MyString' }
    email { 'MyString' }
    address { 'MyText' }
  end
end
