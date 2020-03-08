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


end

