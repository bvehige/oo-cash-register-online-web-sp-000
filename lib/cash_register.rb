require 'pry'

class CashRegister

attr_accessor :total, :discount, :title, :price


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @title = title 
  @price = price 
  @item_list = []
  
end

def add_item(title, price, quantity = 1)
  @total += (price*quantity) 
  @item_list << title
end

def apply_discount
  if @discount > 0 
    savings = (price*)
    @total -= savings
    puts "After the discount, the total is $#{@total}."
  else
    puts "There is no discount to apply."
  end
end

end

