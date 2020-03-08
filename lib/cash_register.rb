require 'pry'

class CashRegister

attr_accessor :total, :discount, :title, :price; :last_transaction


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @title = title 
  @item_list = []
  
end

def add_item(title, price, quantity = 1)
  @price = price 
   
    if quantity > 0 
      counter = 0 
      while counter < quantity 
       @item_list << title
       counter += 1 
     end
     else
       @item_list << title
 end
 @total += (price*quantity)
 @last_transaction = @total 
 @total
end

def apply_discount
  if @discount > 0 
    @savings = (@price*@discount)/100.to_f
    @total -= @savings
    return "After the discount, the total comes to $#{@total.to_i}."
  else
    return "There is no discount to apply."
  end
end

def items
@item_list    
end

def void_last_transaction 
  @total -= @last_transaction

end


end

