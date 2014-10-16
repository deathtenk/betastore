class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  before_validation :set_price
  after_create :add_to_order_total

  def set_price
    self.price = product.price
  end
  def add_to_order_total
    self.order.calculate_total
  end
end
