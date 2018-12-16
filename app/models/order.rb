class Order < ApplicationRecord
  
   belongs_to :buyer
  validates :order_name,:order_qty,:order_address, presence: true
  
end