require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  test "create a line item" do
    l = LineItem.new
    assert l.save, l.errors.full_messages
  end
end
