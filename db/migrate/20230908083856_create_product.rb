class CreateProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, :null => false
      t.decimal :price, :null => false, :default => 0, :check => 'price >= 0'
      t.integer :quantity, :null => false, :check => 'quantity => 0'
      t.text :description
      t.timestamps
    end
  end
end
