class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :kind
      t.text :description
      t.string :photo
      t.float :price
      t.integer :quantity
      t.boolean :sold, default: false
      t.belongs_to :merchant

      t.timestamps
    end
    add_index :products, :name
    add_index :products, :kind
  end
end
