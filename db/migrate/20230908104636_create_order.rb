class CreateOrder < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :account, :foreign_key => true
      t.belongs_to :product, :foreign_key => true
      t.timestamps
    end
  end
end
