class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.float :tax
      t.float :shipping
      t.float :total
      t.references :order_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
