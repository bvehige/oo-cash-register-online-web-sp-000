require 'pry'

class CashRegister

attr_accessor :total, :discount, :title


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @title = title 
  
end

def add_item(title, price)
  @total += price 
  


end

  
  
  
  
  

  
end

