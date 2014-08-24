class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :merchant, index: true
      t.belongs_to :product, index: true
      t.boolean :fulfilled

      t.timestamps
    end
  end
end
