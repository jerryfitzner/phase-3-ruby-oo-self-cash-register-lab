
class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction, :last_transaction_item

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.last_transaction = price * quantity
    self.last_transaction_item = item
    self.total += price * quantity
    quantity.times do
      self.items << item
    end
  end

  def apply_discount 
    if discount == 0
      "There is no discount to apply."
    else
      self.total -= ((discount.to_f / 100) * total).to_i
      "After the discount, the total comes to $#{total}."
    end
  end

  def void_last_transaction
    self.total -= last_transaction
    # leng = items.lenght
  end


end 