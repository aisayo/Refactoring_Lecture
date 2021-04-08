class User < ApplicationRecord
  has_many :coffee_orders
  validates :name, presence: true
end
