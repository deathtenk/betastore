require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
   test "create a customer" do
     c = Customer.new(name: 'bob saget', credit_card_number: 1111111111111111)
     assert c.save, c.errors.full_messages
   end

   test "name is required" do
     c = Customer.new
     refute c.save, 'name should be required'
     assert c.errors.full_messages.include?("Name is required"), 'message should be \'Name is required\''
   end

   test "credit card is too short" do
     c = Customer.new
     refute c.save, 'Credit card number is too short'
     assert c.errors.full_messages.include?("Credit card number is too short (minimum is 16 characters)")
   end

   test "credit card is too long" do
     c = Customer.new
     refute c.save, 'Credit card number is too long'
     assert c.errors.full_messages.include?("Credit card number is too long (maximum is 16 characters)")
   end
end
