# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

30.times do
  Customer.create(name: Faker::Name.name, email: Faker::Internet.email, credit_card_number: 1111111111111111)
end
  30.times do
    Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price)
  end

  30.times do
    Order.create(customer:  Customer.find( rand(1..Customer.last.id) ), placed_at: Faker::Date.backward(30), total_amount: 0 )
  end
  #30.times do
  #  p = Product.find( rand(1..Product.last.id) )
  #  q = rand(1..5)
  #  o = Order.find( rand(1..Order.last.id) )
  #  LineItem.create(order: o, quantity: q, product: p, price: q * p.price  )
  #end
