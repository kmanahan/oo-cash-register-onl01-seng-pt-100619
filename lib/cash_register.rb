require "pry" 

class CashRegister 
attr_accessor :total, :discount, :items
  def initialize(discount=0)  
    @total = 0
    @discount = discount
    @items = []
  end
  
  
  def add_item(title, price, quantity = 1) 
    self.total += price * quantity
    if quantity > 1 
    @items << title
   end 
  end 
  #binding.pry
  def apply_discount
    #binding.pry
    self.total -= self.total * (discount.to_f/100)
    puts "After the discount, the total comes to #{total}."
  end 

end 