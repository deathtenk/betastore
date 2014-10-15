class Order < ActiveRecord::Base
  # relationships
  belongs_to :customer
  has_many :line_items
  has_many :products, :through => :line_items

  #validations
  validates :total_amount, numericality: { greater_than_or_equal_to: 0 }

  def self.recent
    where("placed_at > ?", 7.days.ago)
  end

  def self.by(customer)
    where(customer_id: customer.id)
  end
end
