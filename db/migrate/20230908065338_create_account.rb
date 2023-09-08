class CreateAccount < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :age, :null => false, :check => 'age >= 0 AND age <= 100'
      t.string :email, :null => false, :unique => true
      t.string :password, :null => false
      t.text :address
      t.timestamps
    end
  end
end
