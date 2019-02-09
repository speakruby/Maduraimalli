class Buyer < ApplicationRecord
  
  belongs_to :user
  has_many :orders
  accepts_nested_attributes_for :orders, allow_destroy: true
 
  validates :buyer_name, :buyer_number, presence: true
  
  
end