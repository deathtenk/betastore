require 'test_helper'

class ProductTest < ActiveSupport::TestCase
   test "create a product" do
     product = Product.new(name: "thing", price: 2.99)
     assert product.save, product.errors.full_messages
   end

   test "name is required" do
     product = Product.new
     refute product.save, 'name should be required'
     assert product.errors.full_messages.include?("Name is required")
   end

   test "price is required" do
     product = Product.new
     refute product.save, 'price should be required'
     assert product.errors.full_messages.include?("Price is not a number")
   end

end
