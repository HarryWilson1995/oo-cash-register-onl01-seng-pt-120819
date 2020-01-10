class CashRegister
  attr_accessor :total, :items, :last_transaction, :employee_discount
  
  @@items = []
  @last_transaction = [] 
  
  def initialize(employee_discount = 0)
    @total = 0 
  end 
  
  def total 
    @total 
  end 
  
  def add_item(title, price, quantity = 1)
    @total + (price * quantity)
    @@items << title * quantity 
    @last_transaction = [item, price, quantity]
  end 
  
  def apply_discount
    if employee_discount != 0
      discounted_total = @total * 0.8 
      puts "After the discount, the total comes to $#{discounted_total}."
      @total = discounted_total
    else 
      puts "There is no discount to apply"
    end 
  end 
  
  def items 
    @@items 
  end 
  
  def void_last_transaction
    @total - @last_transaction[1]
  end 
  
end 
