class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :credit_card_number

      t.timestamps
    end
  end
end
