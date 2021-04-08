class CreateCoffeeOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :coffee_orders do |t|
      t.string :title
      t.float :price
      t.string :size
      t.belongs_to :user
      t.timestamps
    end
  end
end
