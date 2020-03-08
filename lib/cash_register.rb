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
  self.total += price * quantity
  quantity.times do
   @item_list << title
    end
    @last_transaction = price * quantity
  end

def apply_discount
  if @discount > 0 
    @savings = (price*discount)/100
    @total -= @savings
    return "After the discount, the total comes to $#{@total}."
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

