class CreateBuyer < ActiveRecord::Migration[5.2]
  def change
    create_table :buyers do |t|
      
      t.string:buyer_name
      t.integer:buyer_number
      t.timestamps
      t.references  :user,index: true,foreign_key: true
    end
  end
end
