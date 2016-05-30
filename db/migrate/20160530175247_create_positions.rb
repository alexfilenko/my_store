class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
    	t.integer :carts_id
    	t.integer :items_id
    	t.integer :quantity
      t.timestamps null: false
    end
  end
end
