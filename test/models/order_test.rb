require 'test_helper'

class OrderTest < ActiveSupport::TestCase
   test "create an order" do
     o = Order.new(total_amount: 8)
     assert o.save, o.errors.full_messages
   end

   test "total amount is not a number" do
     o = Order.new
     refute o.save, 'total amount should be a number'
     assert o.errors.full_messages.include?("Total amount is not a number")
   end
end
