class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, unique: true
      t.timestamps
    end
    add_index :users, :name, unique: true 
  end
end