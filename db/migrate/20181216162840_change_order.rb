class ChangeOrder < ActiveRecord::Migration[5.2]
  def change
    
    add_column :orders,:expected_deivery,:datetime
    add_column :orders,:cost,:float
    add_column :orders,:status,:text
    
  end
end
