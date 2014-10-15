require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
   test "create a customer" do
     c = Customer.new
     assert c.save, c.errors.full_messages
   end

   test "name is required" do
     c = Customer.new
     refute
   end
end
