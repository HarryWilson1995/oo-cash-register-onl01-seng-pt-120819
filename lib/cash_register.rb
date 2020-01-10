class CashRegister
  attr_accessor :total, :items, :last_transaction, :employee_discount
  
  
  def initialize(employee_discount = 0)
    @employee_discount = employee_discount
    @total = 0 
    @items = []
  end 
  
  def total 
    @total 
  end 
  
  def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction = @total
    @total
  end
  
  def apply_discount
    if @employee_discount > 0 
      @employee_discount = @employee_discount/100.to_f 
      @total = @total - (@total * (@employee_discount)) 
      puts "After the discount, the total comes to $#{@total.to_i}."
    else 
      puts "There is no discount to apply"
    end 
  end 
  
  def items 
    @items 
  end 
  
  def void_last_transaction
    @total -= @last_transaction
  end 
  
end 
