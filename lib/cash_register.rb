class CashRegister
  attr_accessor :total
  
  @@items = []
  
  def initialize(employee discount = nil)
    @total = 0 
  end 
  
  def total 
    @total 
  end 
  
  def add_item(title, price, quantity = 1)
    @total + (price * quantity)
    @@items << title * quantity 
  end 
  
  def apply_discount
    
  end 
  
  def items 
    @@items 
  end 
  
  def void_last_transaction
    
  end 
  
end 
