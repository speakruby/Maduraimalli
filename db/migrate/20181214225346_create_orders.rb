class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      
      t.string:order_name
      t.integer:order_qty
      t.text:order_address
      t.timestamps
      t.references :buyer, index: true,foreign_key: true
    end
  end
end
