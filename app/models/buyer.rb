class Buyer < ApplicationRecord
  
  validates :buyer_name, :buyer_number , :order_name , :order_qty , :order_address, presence: true
  has_many :orders
  accepts_nested_attributes_for :orders, allow_destroy: true
  
  
  
end