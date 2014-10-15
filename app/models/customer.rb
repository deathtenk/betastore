class Customer < ActiveRecord::Base
  # relationships
  has_many :orders
  has_many :line_items, :through => :orders
  has_many :products, :through => :line_items

  # validations
  validates :email, uniqueness: true
  validates :name, presence: {message: 'is required'}
  validates :credit_card_number, length: {minimum: 16, maximum: 16}, allow_blank: false

  # callbacks
  after_create :send_confirmation_email

  def send_confirmation_email
    #TODO: Actually send email
    logger.warn "Sending email to #{email}"
  end

end
