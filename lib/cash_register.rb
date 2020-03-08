require 'pry'

class CashRegister

attr_accessor :total, :discount, :title


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @title = title 
  @item_list = []
  
end

def add_item(title, price, quantity = 1)
  @total += (price*quantity) 
  @item_list << title
end

def apply_discount
  if @discount > 0 
    @total = self*80
    puts "After the discount, the total is $#{@total}."
  else
    
  end


end

