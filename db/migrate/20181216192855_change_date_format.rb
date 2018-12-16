class ChangeDateFormat < ActiveRecord::Migration[5.2]
  def change
    
    change_column :orders, :expected_deivery, :date
    
  end
end
