class CashRegister
  attr_accessor :discount, :total, :quantity


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
    item_names = []
    @cart.each do | item_info |
      for qty in 1..item_info[:quantity]
        item_names << item_info[:name]
      end
    end
    item_names
  end

  def void_last_transaction
    item
  end
end
