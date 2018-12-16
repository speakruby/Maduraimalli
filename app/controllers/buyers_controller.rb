class BuyersController < ApplicationController
  
def new
  
  @buyer = Buyer.new
  @buyer.orders.build 
  
end 

def create
  
 @buyer = Buyer.create(from_the_ui)
 if @buyer.save
   
   flash[:notice] = "Order was successfully created"
   redirect_to buyer_path(@buyer)
 else
   
   render'new'
 end
 
 

 
end 

def show
  @buyer = Buyer.find(params.require(:id))
  @buyer1 = Buyer.all
end

def index
  
  @buyer=Buyer.all
  
end



private 

   def from_the_ui
    
    params.require(:buyer).permit(:buyer_name,:buyer_number,orders_attributes:[:order_name,:order_qty,:order_address])
   end
end








