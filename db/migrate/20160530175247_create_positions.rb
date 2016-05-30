class CreatePositions < ActiveRecord::Migration
  def up
    create_table :positions do |t|
    	t.integer :carts_id
    	t.integer :items_id
    	t.integer :quantity
      t.timestamps null: false
    end
    drop_table :carts_items
  end
end
