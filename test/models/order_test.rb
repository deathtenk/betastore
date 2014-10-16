require 'test_helper'

class OrderTest < ActiveSupport::TestCase
   test "total amount is set when saving order" do
     order = Order.new(customer: customers(:henk))
     order.save

     order.line_items.create(product: products(:hat), quantity: 2)

     assert_equal 19.98, order.total_amount
   end

   #test "total amount is not a number" do
    # o = Order.new
    # refute o.save, 'total amount should be a number'
     #assert o.errors.full_messages.include?("Total amount is not a number")
   #end
end
