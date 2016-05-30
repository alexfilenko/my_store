class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t_string :login
        t.timestamps null: false
    end
  end
end