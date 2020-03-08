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
  self.total += amount * quantity
  quantity.times do
   items << title
    end
    self.last_transaction = amount * quantity
  end
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
  binding.pry
  @total -= @last_transaction

end


end

