class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[5.2]
  def change
    
    change_column :buyers, :buyer_number, :integer, limit: 8
    
  end
  
 
end
