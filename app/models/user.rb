class User < ApplicationRecord
  has_secure_password
  has_many :orders

  validates :password, length: { minimum: 8 }
  # validates :password, format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)\z/ }

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
