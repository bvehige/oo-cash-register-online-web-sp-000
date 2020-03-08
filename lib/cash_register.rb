require 'pry'

class CashRegister

attr_accessor :total, :discount, :title, :price


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @title = title 
  @item_list = []
  
end

def add_item(title, price, quantity = 1)
  @price = price 
  @total += (price*quantity) 
    if quantity > 0 
      counter = 0 
      while counter < quantity 
       @item_list << title
       counter += 1 
     else
       @item_list << title 
   end
 end
end

def apply_discount
  if @discount > 0 
    @savings = (@price*@discount)/100
    @total -= @savings
    return "After the discount, the total comes to $#{@total}."
  else
    return "There is no discount to apply."
  end
end

def items
@item_list    
end


end

