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
    quantity.times do 
      @items << title
    end
  end 
  
  #binding.pry
  def apply_discount
    #binding.pry
    if discount > 0 
<<<<<<< HEAD
      self.total -= self.total * (discount.to_f/100)
      "After the discount, the total comes to $#{total.to_i}."
    else 
      "There is no discount to apply."
    end
=======
    self.total -= self.total * (discount.to_f/100)
    "After the discount, the total comes to $#{total.to_i}."
  else 
>>>>>>> e1c1ac77a27216b550cfc98a8026643bc3441b6b
  end 
  
  
end 