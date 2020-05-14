class CashRegister
  attr_accessor :discount, :total, :quantity, :last_transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, quantity = 1)
    item_attr = {}
    item_attr[:name] = item
    item_attr[:price] = price
    item_attr[:quantity] = quantity

    @cart << item_attr
    @last_transaction = @total
    @total += price * quantity

  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    items = []
    @cart.each do | item_attr |
      for qty in 1..item_attr[:quantity]
        items << item_attr[:name]
      end
    end
    items
  end

  def void_last_transaction
    if @last_transaction == 0
      @total = 0
    end
  end
end
